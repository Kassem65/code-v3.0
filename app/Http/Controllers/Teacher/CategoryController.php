<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\CategoryStudentResource;
use App\Models\Category;
use App\Models\CategoryStudent;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpOffice\PhpSpreadsheet\Calculation\Statistical\Distributions\StudentT;

class CategoryController extends Controller
{
    public function index() {
        $categories = auth()->user()->teacher->categories;
        return CategoryResource::collection($categories);
    }
    public function getCategoryDetails(Category $category) {
        $data = [];
        $data['category'] = $category;
        $data['exam_mark'] = $category->subject()->first()['exam_mark'];
        return $data;
    }
    public function showCategoryStudent(Category $category){
        $students = $category->students()->get();
        
        return CategoryStudentResource::collection($students) ;
    }
    public function show(Category $category) {
        return $category;
    }
    public function checkStudents( Category $category,Request $request ){
        $request->validate([
            'students' => 'required|array',
        ]);
        
        DB::beginTransaction();
        // return $request ;
        foreach($request->students as $student){
            $studentCategoey = CategoryStudent::where('student_id' ,$student['id'] )
                ->where('category_id' , $category->id)
                ->first();
            if ($studentCategoey == null)
                abort(404,'there is no student in this category');
            $studentCategoey->presence++;
            if($studentCategoey['mark'] != -1)
                $studentCategoey->number_of_assessment++;
            if($studentCategoey['mark'] != 0)
                $studentCategoey->assessment_marks+=$studentCategoey['mark'] ;
            $studentCategoey->save() ;
        }
        DB::commit();
        return response()->json([
            'message' => 'checked successfully'
        ] ,200);
    }
    public function updateCategory(Request $request,Category $category){
        
        $this->teacherAuth($category) ;
        $request = $request->except(['name' , 'teacher_id'  , 'subject_id' ,'id']);
        $category->update($request);
        return new CategoryResource($category) ;
    }

    protected function teacherAuth( Category $category){
        $teacher = $category->teacher;       
        if ($teacher->id != auth()->user()->teacher->id){
            abort(403 , 'this category does not belong to you') ;
        }
    }
    public function subjects (){
        
        $teacher = auth()->user()->teacher ;
        
        // return $teacher->categories ;
        $subjects = $teacher->categories->map(function($category){
            return $category->subject ;
        })->unique();
        return $subjects ;
    }
    public function getStudents(Category $category)
    {
        
        $students = Student::whereHas('categories', function($query) use ($category) {
            $query->where('category_id', $category->id);
        })
        ->with(['user'])
        ->get(['students.id', 'students.phone_number', 'students.user_id']);

        $result = $students->map(function($student) {
            return [
                'id' => $student->id,
                'name' => $student->user->name,
                'phone_number' => $student->phone_number,
            ];
        });

        return response()->json($result);
    }
    public function addStudent(Category $category , Request $request){
        $request->validate([
            'university_id' => 'required|exists:students,university_id'
        ]);
        $subject = $category->subject()->first();
        $student = Student::where('university_id' , $request->university_id)->first();
        $studentCategories = $student->categories()->get();
        foreach($studentCategories as $s_category){
            if($s_category->subject()->first()->id == $subject->id){
                $student->categories()->detach($s_category);
            }
        }
        $category->students()->attach($student->id);
        return ['message' => 'student added successfully'];
    }
}
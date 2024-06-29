<?php

namespace App\Http\Controllers\Adminstrator;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\ChangeCategoryRequest;
use App\Models\SetOfStudent;
use App\Models\Student;
use App\Models\Subject;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

use Maatwebsite\Excel\Facades\Excel;

class StudentController extends Controller
{
    public function index() {
        $data['students'] = Student::all();
        $data['change_class_request'] = ChangeCategoryRequest::all()->map(function ($request) {
            return [
                'id' => $request->id,
                'student_name' => $request->student->user->name,
                'old_class' => $request->old_category,
                'new_class' => $request->new_category, 
            ];
        });
        return $data;
    }
    public function changeStudentPassword(Student $student) {
        $new_password = Str::random(16);
        $user = User::where('id', $student->user_id)->first();
        $user->password = Hash::make($new_password);
        $user->save();
        return response()->json([
            'message' => 'your password changed successfully',
            'new_password' => $new_password
        ]);
    }
    public function importStudents(Request $request ){
        $request->validate([
            'file' => 'required'
        ]);

        $file = $request->file('file');
        $rows = Excel::toCollection([] , $file)[0];
        DB::beginTransaction();
        foreach($rows as $row){
            if ($row[0] == 'number')continue ;
            SetOfStudent::create([
                'number' =>$row[0] ,
                'name' =>  $row[1]
            ]);
        }
        DB::commit();
        return ['message' => 'studnts added successfully']; 
        
    }
        public function distributeCategories(Request $request){
        $request->validate([
            'classes' => 'required|integer',
            'year' => 'required|integer',
            'file' => 'required',
        ]);
        $subjects = ($request->year == 1) ? [1,2] : [3 ,4 ,5] ;
        $file = $request->file('file');
        $rows = Excel::toCollection([] , $file)[0];
        $this->distribute($request , $subjects , $rows);
        return response()->json([
            'message' =>  'added successfully' ,
        ]);
    }
    private function distribute($request , $subjects , $rows){
         for ($i = 1; $i <= $request->classes * count($subjects); $i++) {
            $subject_id = $subjects[(int)(($i-1)/$request->classes)] ;
            $subject = Subject::where('id' , $subject_id)->first();
            
            $categories [] = Category::create([
                'subject_id' => $subject->id ,
                'name' => $subject->name.'_'.$i ,
            ]);
        }
        foreach ($rows as $row){
            if ($row[0] == 'class') continue;
            
            $user = User::where('name', $row[1])->first();
            $student = $user->student;
            foreach($categories as $category){
                if ($category->name[strlen($category->name)-1] == $row[0]){
                    $student->categories()->attach($category->id);
                    // //add students to subjects also 
                    // foreach($subjects as $subject){
                    //     $student->subjects()->attach($subject) ;
                    // }
                }
            }
        }
    }
}


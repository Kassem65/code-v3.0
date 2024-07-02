<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Http\Resources\AssessmentStudentsResource;
use App\Models\Assessment;
use App\Models\Category;
use App\Models\CategoryStudent;
use Illuminate\Http\Client\ResponseSequence;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AssessmentController extends Controller
{
    public function index(Category $category) {
        return $category->assessments->map(function($assessment){
            return [
                'problem_name' =>$assessment->problem->name ,
                'problem_id' => $assessment->problem_id ,
                'id' => $assessment->id ,
                'name' => $assessment->name ,
                'date' =>  $assessment->created_at ,
            ];
        });
    }

    public function store(Request $request){
        $request->validate([
            'category_id' => 'required|exists:categories,id',
            'name' => 'string' ,
            'problem_id' => 'required|exists:problems,id'
        ]);
        $request['teacher_id'] = auth()->user()->teacher->id;
        Assessment::create($request->all());
        return [
            'message' => 'assessment added successfully' 
        ];

    }
    public function stopAssessment(Assessment $assessment , Request $request ) {
        $request->validate([
            'students' => 'required|array'
        ]);
        if ($assessment->active == 0 ||$assessment->active == 2  ){ 
            return ['message' => 'this assessment is already stoped'];
        }
        $this->checkPermission($assessment) ;
        DB::beginTransaction();
        $assessment->active = 2 ; 
        $assessment->save();
        $problem = $assessment->problem;
        $problem->active = 1 ;
        $problem->save();
        $category = $assessment->category ;
        foreach($request->students as $student){
            $cat_stu = CategoryStudent::where('student_id' , $student['id'])
                ->where('category_id' , $category->id)
                ->first();
            if ($cat_stu == null){
                // return [$student , $category] ; 
                DB::rollBack();
                return ['message' => "the student with this id $student[id] is not exist in this category $category->id" ];   
                
            }
            if ($student['mark']!==0)
            if ($student['mark'] > 100)
            return ['message' => 'the mark should less than 100'];
                    // return $cat_stu ;
            $assessment->students()->updateExistingPivot($student['id'],[
                'mark' => $student['mark'] 
            ]);
            $cat_stu->save();
            
        }
        DB::commit();
        return ['mesage' => 'assessment finishing successfully'] ;
    }
    public function active(Assessment $assessment , Request $request ) {
        $this->checkPermission($assessment) ;
        $request->validate([
            'students' => 'required|array'
        ]);
        if ($assessment->active == 1){
            return ['message'=>'this assessment already active'];
        }
        if ($assessment->active == 2){
            return ['message'=>'_this assessment was activeted in  ' .$assessment->updated_at ];
        }
        $assessment->active = 1 ;
        $category = $assessment->category ;
        $assessment->save() ;
        foreach($request->students as $student){
            $assessment->students()->attach($student);
        }
        
        return ['message' => 'activeated successfully ']; 
        //AssessmentStudentsResource::collection($assessment->students()->get());
    }
    public function studentsInAssessment(Assessment $assessment){
        return $assessment->students;
    }
    public function details(Assessment $assessment){
        $data['student'] =  AssessmentStudentsResource::collection($assessment->students()->get());
        $problem = $assessment->problem ;
        $problem->testCases;
        $problem->tags ;
        $problem['solve'] = $problem->teacher_code_solve ;
        $data['problem'] = $problem ;
        return $data ;

    }
    public function delete(Assessment $assessment){
        $assessment->delete() ;
        return response()->json([
            'message' => 'deleted sucessfully'
        ] ,200) ;
    }

    protected function checkPermission(Assessment $assessment){
        if ($assessment->teacher_id != auth()->user()->teacher->id)
            abort(403 , 'this assessment dont belongs to you') ;
    }
    
    
}

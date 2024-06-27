<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\Assessment;
use App\Models\Category;
use App\Models\Problem;
use Illuminate\Http\Request;

class AssessmentController extends Controller
{
    
    public function show(Category $category){
        $assessment = $category->assessment() ;
        $assessment->problem ;
        return $assessment ;  
    }
    public function solveAssessment(Assessment $assessment , Request $request){
        $student =  auth()->user()->student ;
        $solve = ProblemController::solveProlem($assessment->problem,$request );
        $assessment->students()->updateExistingPivot($student->id , ['mark' => $solve['percent'] ,'solve' => $request->code]);
        $message = "" ;
        if ($solve['approved'] == true)
            $message = "granduated . you skip all test cases and get 100% " ;
        else {
            $message = "bad lock . your code escape $solve[percent] % of test cases" ;
        }
        
        return response()->json([
            'message' => $message ,            
            'note' => 'if you re solve the prblem you will lose the cuurent mark'
        ]); 
    }
    public function showSolve(Assessment $assessment){
    
        $student = auth()->user()->student;
        // return $student ;
        $solve = $assessment->students()->where('student_id' , $student->id)->first()->pivot->solve ;
        return $solve ;
    }
}

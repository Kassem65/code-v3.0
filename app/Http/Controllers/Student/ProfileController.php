<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\ExamStudent;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function show() {
        $user = auth()->user();
        $student = $user->student()->first();

        $student['materials'] = $student->categories()
            ->get()
            ->map(function ($category) use ($student){
            $studnet_assessments = $student->assessments()->where('category_id' , $category->id)->get();
            // return $studnet_assessments ;
            $assessments = $category->assessments()->get();
            $student['attendance_mark'] = (($studnet_assessments->count() / $assessments->count() ) * $category->mark_of_commings) ;
            $assessment_mark =  0 ;
            foreach($studnet_assessments as $assessment){
                $assessment_mark+= $assessment->pivot->mark ;
            }
            $exam_mark = NULL;
            $student['assessment_mark'] = (($assessment_mark / ($assessments->count()*100)) * $category->mark_of_ratings) ;
            $exam = $category->subject->exam;
            if ($exam != NULL)
                $exam_mark = ExamStudent::where('exam_id' , $exam->id)->where('student_id' , $student->id)->first();
            $student['exam_mark'] = (($exam_mark != NULL)  ? $exam_mark->mark : 0) ;
            $student['total'] = $student['attendance_mark'] + $student['assessment_mark']  +$student['exam_mark']  ;
                return [
                    'subject_name' => $category->subject->name,
                    'degree' => round($student['total']),
                    'date' => $category->created_at,
                ];
            });
            $student['solutions'] = $student->hard + $student->medium + $student->easy;
            $student['detail'] = $user;
        
        return $student;
    }
    
    
}

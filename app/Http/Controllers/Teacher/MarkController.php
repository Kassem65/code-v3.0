<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Http\Resources\StudentMarkResourece;
use App\Models\AssessmentStudent;
use App\Models\Category;
use App\Models\CategoryStudent;
use App\Models\ExamStudent;
use App\Models\Student;
use Illuminate\Http\Request;

class MarkController extends Controller
{
    public function addMarks(Request $request){
        $request->validate([
            'attendance_mark' => 'required|integer',
            'category_id' => 'required|exists:categories,id',
        ]);
        $category = Category::find($request->category_id);
        if ($category->teacher_id != auth()->user()->teacher->id)
        abort(403 , 'this category dont belon to you ');
        $exam_mark = $category->subject->exam_mark;
        $total_mark  = $category->subject->total_mark;
        $category->mark_of_commings = $request->attendance_mark;
        $category->mark_of_ratings = $total_mark - $category->mark_of_commings - $exam_mark ;
        $category->save();
        return response()->json([
            'message'=> 'mark added sucssessfully'
        ],200);
    }
    public function showMarks(Category $category) {
        $students = $category->students()->with('user')->get();
        $exam = $category->subject->exam ;
        $assessments = $category->assessments()->get() ;
        foreach($students as $student){
            
            $studnet_assessments = $student->assessments->where('category_id' , $category->id);
            // return $studnet_assessments ;
            $student['attendance_mark'] = round(($studnet_assessments->count() / $assessments->count() ) * $category->mark_of_commings) ;
            $assessment_mark =  0 ;
            foreach($studnet_assessments as $assessment){
                $assessment_mark+= $assessment->pivot->mark ;
            }
            
            $student['assessment_mark'] = round(($assessment_mark / ($assessments->count()*100)) * $category->mark_of_ratings) ;
            $exam_mark = ExamStudent::where('exam_id' , $exam->id)->where('student_id' , $student->id)->first();
            $student['exam_mark'] = round(($exam_mark != NULL)  ? $exam_mark->mark : 0) ;
            $student['total'] = $student['attendance_mark'] + $student['assessment_mark']  +$student['exam_mark']  ;
        }
        $students = StudentMarkResourece::collection($students);
        $marks['mark_of_commings'] = $category->mark_of_commings ;
        $marks['mark_of_ratings'] = $category->mark_of_ratings ;
        $marks['exam_mark'] = 15 ;
        return response()->json([
            'marks' => $marks ,
            'students' => $students ,
            'messange' => 'تم بعون الله'
        ],200);
    
}
}

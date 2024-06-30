<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Http\Resources\ExamsSubjectsResource;
use App\Models\Exam;
use App\Models\ExamStudent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Termwind\Components\Raw;

class ExamController extends Controller
{
    public function index() {
        $student = auth()->user()->student;
        $exams = $student->exams()->where('time', '<', now())->get();
        return ExamsSubjectsResource::collection($exams);
    }

    public function show(Exam $exam) {
        $studentId = auth()->user()->student->id;
        $isEnrolled = $exam->subject->students->contains($studentId);
        if (!$isEnrolled) {
            return response()->json([
                'error' => 'you can t access this exam. you are not belong to this subject'
            ]);
        }
        if (!ExamStudent::where('student_id', $studentId)->where('exam_id', $exam->id)->where('check', '>=', 1)->exists()) {
            abort(403, 'you are not joined yet. please enter the password '. $exam->passwd);
        }
        if ($exam->time > now()){
            return response()->json([
                'error' => 'exam not started.'
            ]);
        }
        $exam->trueFalseQuestions;
        $exam->problem1;
        return response()->json([
            'exam' => $exam
        ]);
    }
    public function showStudentExamSolve(Exam $exam){
        $student = auth()->user()->student;
        $student_solve = ExamStudent::where('exam_id', $exam->id)
            ->where('student_id', $student->id)
            ->first();
        $student_solve->answers;
        $exam->problem1; 
        $exam->trueFalseQuestions;
        return response()->json([
            'exam' => $exam,
            'solve' => $student_solve
        ]);
    }
    
    public function solve(Request $request, Exam $exam){
        $studentId = auth()->user()->student->id;
        if (!$exam->students->contains($studentId)){
            return ['error' => 'you are not in this subject.'];
        }
        if ($exam->students()->where('student_id' , $studentId)->first()->pivot->mark != 0){
            return ['message'=> 'you already solve this exam'];
        }
         if ($exam->time > now()){
            abort(403,'exam not started yet');
        }
        if ($exam->time < now()->subMinutes($exam->duration)){
            abort(403,'exam over');
        }
        
        $request->validate([
            'answers' => 'required|array',
            'problem_mark' => 'required|integer|max:15|min:0' 
        ]);
        $count = 0;
        $qustions = $exam->trueFalseQuestions()->get();
        $examStudent = ExamStudent::where('exam_id' , $exam->id)
        ->where('student_id' , $studentId)
        ->first();

        foreach($request->answers as $answere){
            $examStudent->answers()->create([
                'true_false_question_id' => $answere['true_false_question_id'],
                'answer' => $answere['answere']
            ]);
            foreach($qustions as $qustion){
                if ($qustion->id == $answere['true_false_question_id'] 
                && $answere['answere'] == $qustion->correct){
                    $count++;
                }
            }
        }
        $examMark = ($count / count($qustions) ) * 10 + $request->problem_mark ;
        $examStudent->mark = $examMark ;
        $examStudent->save();
        return [
            'message' => "your mark is $examMark , amd you can review your solve in any time "
        ];
    }
    public function submit(Request $request, Exam $exam)
    {
        $studentId = auth()->user()->student->id;
        // if ($exam->students()->where('student_id' , $studentId)->first()->pivot->mark != 0){
        //     return ['message'=> 'you already solve this exam'];
        // }
        $request->validate([
            'code' => 'required',
            'lang' => 'required'
        ]);
        $precent = ProblemController::solveProlem($exam->problem1, $request)['percent'];
        $markOfProblem = 5 ;
        $result = $precent *  $markOfProblem / 100;
        $exam->students()->updateExistingPivot($studentId , ['mark' => $precent*$markOfProblem]);  
        return [
            'message' => "you get $result from 5 and you can resubmit the solve \n but note , once you subimt you will lose the old solve and mark ",
            'mark' => $result
        ];
    }
    
    public function joinExam(Request $request, Exam $exam) {
        $request->validate([
            'password' => 'required'
        ]);
        $studentId = auth()->user()->student->id;

        // Check if the student is enrolled in the subject related to the exam
        $isEnrolled = $exam->students->contains($studentId);

        if ($isEnrolled) {
            $check = ExamStudent::where('student_id', $studentId)
                ->where('exam_id', $exam->id)
                ->first()->check;
            if ($check >= 1) {
                abort(403, 'you registered before');
            }
            // The student is enrolled in the subject, you can proceed with password check
            $enteredPassword = $request->input('password');
            if ($exam->passwd == $enteredPassword) {

                $exam->students()->updateExistingPivot($studentId, ['check' => DB::raw('`check` + 1')]);
                return response()->json([
                    'message' => 'you registered in the exam successfully.'
                ]);
            } else {
                return response()->json([
                    'error' => 'the password incorrect.'
                ]);
            }
        } else {
            return response()->json([
                'error' => 'you are not in this subject.'
            ]);
        }
    }
}

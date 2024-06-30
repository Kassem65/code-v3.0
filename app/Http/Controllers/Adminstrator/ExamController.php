<?php

namespace App\Http\Controllers\Adminstrator;

use App\Http\Controllers\Controller;
use App\Http\Resources\ExamsSubjectsResource;
use App\Http\Resources\ExamSubjectResource;
use App\Models\Exam;
use App\Models\ExamStudent;
use App\Models\Subject;
use App\Models\TrueFalseQuestion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ExamController extends Controller
{
    public function index() {
        $exams = Exam::with('subject')->get();
        return ExamsSubjectsResource::collection($exams);
    }
    public function show($id) {
        $exam = Exam::with('subject', 'problem1', 'trueFalseQuestions')->find($id);
        
        return new ExamSubjectResource($exam);
    }
    public function addExamToSubject(Request $request, Subject $subject) {
        $request->validate([
            'exam_date' => 'required|date',
            'exam_name' => 'required',
            'exam_password' => 'required',
            'problem_id' => 'required|integer',
            'questions' => 'required|array'
        ]);
        $currentYear = now()->year;
        $existingExam = $subject->exam()->whereYear('created_at', $currentYear)->first();
        if ($existingExam) {
            return response()->json([
                'error' => 'the subject already has an exam for this year.'
            ]);
        }
        DB::beginTransaction();

        $exam = Exam::create([
            'passwd' => $request->exam_password,
            'administrator_id' => auth()->user()->adminstrator->id,
            'name' => $request->exam_name,
            'time' => $request->exam_date,
            'subject_id' => $subject->id,
            'problem1_id' => $request->problem_id,
        ]);

        foreach ($request->questions as $question) {
            TrueFalseQuestion::create([
                'question_text' => $question['question_text'],
                'choise1' => $question['choise_1'],
                'choise2' => $question['choise_2'],
                'choise3' => $question['choise_3'],
                'choise4' => $question['choise_4'],
                'correct' => $question['correct'],
                'exam_id' => $exam->id,
                'code' => $question['code']
            ]);
        }
        $students = $subject->students;
        foreach ($students as $student) {
            ExamStudent::create([
                'exam_id' => $exam->id,
                'student_id' => $student->id,
            ]);
        }
        DB::commit();
        return response()->json([
            'success' => 'exam added successfully and students added success',
        ]);
        
        
    }
}

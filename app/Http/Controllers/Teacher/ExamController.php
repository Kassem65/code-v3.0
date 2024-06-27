<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Exam;
use App\Models\ExamStudent;
use App\Models\Student;
use App\Models\Subject;
use Illuminate\Http\Request;

use function PHPUnit\Framework\returnSelf;

class ExamController extends Controller
{
    public function showStudentSolve(Request $request){
        $request->validate([
            'student_id' => 'required|integer',
            'exam_id' => 'required|integer'
        ]);
        $solve = ExamStudent::where('student_id' , $request->student_id)
            ->where('exam_id' , $request->exam_id)
            ->first();
        // $solve['problem_1'] = $solve->exam->problem1->description ; 
        $answer = $solve->answers()->get()->map(function ($answer) {
            return [
                'id' => $answer->id ,
                'question_text' => $answer->trueFalseQuestion()->first()['question_text'],
                'answer' => $answer->answer
            ];
        });
        
        $solve->answers = $answer ;
        return $solve;
    }

    public function editMarkStudent(Request $request) {
        $request->validate([
            'exam_id' => 'required|integer|exists:exams,id' ,
            'student_id' => 'required|integer|exists:students,id' ,
            'mark' => 'required|integer|max:15|min:0'
        ]);
        $exam = ExamStudent::where('student_id' , $request->student_id)
            ->where('exam_id' , $request->exam_id)
            ->first() ;
        $exam->mark = $request->mark ;
        $exam->save();
        return response()->json([
            'message' => 'updated successfully'
        ],200);
    }
    public function editMarkExamStudent(Request $request) {
        $request->validate([
            'category_id' => 'required|integer',
            'exam_id' => 'required|integer' ,
            'student_id' => 'required|integer' ,
            'mark' => 'required|integer'
        ]);
        // Check if the student belongs to the specified category
        $student = Student::whereHas('categories', function($query) use ($request) {
            $query->where('category_id', $request->category_id);
        })
        ->whereHas('exams', function($query) use ($request) {
            $query->where('exam_id', $request->exam_id);
        })
        ->findOrFail($request->student_id);
        
        $examStudent = ExamStudent::where('student_id', $request->student_id)
            ->where('exam_id', $request->exam_id)
            ->firstOrFail();
        
        $examStudent->mark = $request->input('mark');
        $examStudent->save();

        return response()->json(['message' => 'Exam mark updated successfully.']);

    }
    public function subjectExam(Category $category){
        $subject= $category->subject ;
        if ($subject->exam == NULL || $subject->exam->created_at < now()->subYear())
        abort(300,'there is no exam yet ');
        return $subject->exam ;
    }
    public function show(Exam $exam){
        $exam->trueFalseQuestions ;
        $exam->problem1 ;
        return $exam ;
    }
    public function getMarks(Category $category){
        $exam = $this->subjectExam($category) ;
        return [
            'exam' => $exam ,
            'students' => $exam->students->map(function($student){
                return [
                    'id' => $student->id ,
                    'name' =>$student->user->name ,
                    'university_id' => $student->university_id ,
                    'mark' => $student->pivot->mark     
                ];
            })
        ] ;
    }
    public function updateExamMarks(Exam $exam , Request $request){
        $request->validate([
            'students' => 'required|array'
        ]);
        
        foreach ($request->students as $student){
            $exam->students()->updateExistingPivot($student['id'] , ['mark' => $student['mark']]);    
        }
        return ['message' => 'marks updated successfully '];
    }
}

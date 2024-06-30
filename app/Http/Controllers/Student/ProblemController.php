<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\CodeExecutorController;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProblemResource;
use App\Models\Problem;
use App\Models\SolveProblem;
use Illuminate\Http\Request;
use PDO;

class ProblemController extends Controller
{
    public function problems(){
        $problems = Problem::with('tags')->get();
        // $problems = $problems->reverse();
        $student_id = auth()->user()->student->id; 
        $problems->map(function ($problem) use ($student_id) {
            $solved = SolveProblem::where('student_id', $student_id)
                ->where('problem_id' , $problem->id)
                ->where('approved', true)
                ->exists();
            if ($solved){
                $problem['status'] = 'accept' ;
            }else 
                $problem['status'] = ' ';
        });
        return response()->json([
            'message' => 'done' ,
            'data' => $problems
        ],200) ;
    }
    public function solves($problem){
        $submistions =  SolveProblem::where('student_id' , auth()->user()->student->id)
            ->where('problem_id' , $problem)
            ->get();
        $data = [] ;
        foreach($submistions as $submistion){
            if ($submistion->approved == true ){
                $message = 'accept' ;
            }else $message = 'error' ;
            $data [] = [
                'id' => $submistion->id ,
                'name' => 'solution ' . $submistion->id ,
                'status' => $message ,
            ];
        }
        return response()->json([
            'message' =>  ' done ' ,
            'data' => $data
        ],200);
    }
    public function testCases(SolveProblem $solve){
        // return $solve ;
        $studentSolves = $solve->solveCases;
        $teacherSolves = $solve->problem->testCases ?? [];
        
        $data = [] ;
        $data['solve'] = $solve->student_code ;
        $i = 0 ;
        foreach($studentSolves as $studentSolve){
            $data['testCases'][$i]['input'] = $studentSolve['input'] ?? ' ';
            $data['testCases'][$i]['output'] = $studentSolve['output'] ?? ' ';
            $data['testCases'][$i]['answer'] = $teacherSolves[$i]['output'] ?? ' ';
            $i++;
        }
        $response = [
            'data' => $data,
            'message' => 'good',
        ];
        
        if (!empty($teacherSolves)) {
            $response['test_cases'] = ' ';
        }
        
        return response()->json($response, 201);
    }
    public static function show(Problem $problem){
        // if ($problem->active == 0) {
        //     abort(403, 'you cant access this problem');
        // }
        $problem->testCase ;
        $problem->tags ;
        $solved = SolveProblem::where('student_id' , auth()->user()->student->id )
        ->where('problem_id' , $problem->id)
        ->where('approved', true)
        ->exists();
        if ($solved){
            $problem['status'] = 'accept' ;
        }else $problem['status'] = 'not yet' ;
    
        return $problem ;
    }
    public static function solveProlem(Problem $problem , Request $request):array{
        //validate 
        $request->validate([
            'code' => 'required',
            'lang' => 'required|integer'
        ]);
        
        //create Solve problem 
        $student = auth()->user()->student ;
        $solveProblem = SolveProblem::create([
            'student_id' => $student->id ,
            'problem_id' => $problem->id ,
            'student_code' => $request->code ,
            'approved' => false ,
        ]);
        $time = 0 ; $message = "" ; $error = false ;
        // get test cases 
        $testCases = $problem->testCases()->get() ;

        //loop on each test case and check if work 
        $count = 0 ;
        foreach($testCases as $testCase){
            if ( $request->lang == 1)
                $output = CodeExecutorController::runCppCode(['code' => $request->code , 'input' => $testCase->input]);
            else $output = CodeExecutorController::runJavaCode(['code' => $request->code , 'input' => $testCase->input]);
            // retuen the error if accourd 
            if (array_key_exists('error' , $output)) {         
                $output = $output['error'];
                $time = 0 ;
                $message = "error " . $output ;
                $error = true ;
            }else {
                $time = $output['time'];
                $output = $output['output']; 
                if ($time > $problem->time_limit_ms){
                    $message =  "time limit exceded .. the available time is $problem->time_limit_ms you get $time" ;               
                    // $error  = true ;
                }
                if ($output != $testCase->output){
                    $message = "wrong test in one case expected " . $testCase->output . "--- get" .$output;

                    $error = true ;
                }
            }
            $solveProblem->solveCases()->create([
                'input'=> $testCase->input ,
                'output' => $output ,
                'time' => $time
            ]);
            if ($error){
                return [
                    'message' => $message,
                    'approved' => false ,
                    'percent' => $count * 100 /count($testCases)
                ];
            }
            $count++;
        }
        $solveProblem->approved = true ;
        $student->rate += $problem->level ;
        $student->points += $problem->level ;
        $solveProblem->save();
        return [
            'message' => 'accept' ,
            'approved' => true ,
            'percent' => 100
        ];
    }
    public function solve(Problem $problem , Request $request){
        $solve = $this->solveProlem($problem , $request) ;
        $student = auth()->user()->student;
        if ($solve['approved'] == false){
            return response()->json([
                    'message' => $solve['message'],
                    'approved' => false 
            ],300);
        }else {
            if ($problem->diffculty == 'easy') {
                $student->easy++;
            }
            if ($problem->diffculty == 'medium') {
                $student->medium++;
            }
            if ($problem->diffculty == 'hard') {
                $student->hard++;
            }
            $student->rate+=$problem->level;
            $student->save();
            return response()->json([
                'message' => $solve['message'] ,
                'approved' => true
            ],200);
        }
    }
    public function filter(Request $request){
        $problems = Problem::query()->with('tags');//->where('active' , 1);
        
        if ($request->diffculty != null){
            $problems->where('diffculty' , $request->diffculty);
        }
        if ($request->tag != null) {
            $problems->whereHas('tags', function ($query) use ($request) {
                $query->where('name', $request->tag);
        });
        }
        if ($request->sort != null){
            if ($request->sort == 'AES')
                $problems->orderBy('level' , 'asc');
            else $problems->orderBy('level' , 'desc');
        }
        if ($request->name != null){
            $problems->where('name' ,'like', "%$request->name%");
        }
        
        return $problems->get() ;
    }
    public function bankFilter(Request $request) {
        $problems = Problem::query()->where('active', 0)->where('teacher_id',auth()->user()->teacher->id);

        if ($request->diffculty != null){
            $problems->where('diffculty' , $request->diffculty);
        }
        if ($request->tag != null) {
            $problems->whereHas('tags', function ($query) use ($request) {
                $query->where('name', $request->tag);
        });
        }
        if ($request->sort != null){
            if ($request->sort == 'AES')
                $problems->orderBy('level' , 'asc');
            else $problems->orderBy('level' , 'desc');
        }
        if ($request->name != null){
            $problems->where('name' ,'like', "%$request->name%");
        }
        
        return ProblemResource::collection($problems->get()) ;
    }
}

<?php

use App\Http\Controllers\Adminstrator\CategoryController as AdminstratorCategoryController;
use App\Http\Controllers\Adminstrator\StudentController as AdminStudentController;
use App\Http\Controllers\Adminstrator\ExamController as AdminstratorExamController;
use App\Http\Controllers\Adminstrator\RequestController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\CodeExecutorController;
use App\Http\Controllers\ExcelImportController;
use App\Http\Controllers\Teacher\AssessmentController;
use App\Http\Controllers\Teacher\CategoryController;
use App\Http\Controllers\Teacher\ExamController;
use App\Http\Controllers\Teacher\MarkController;
use App\Http\Controllers\Teacher\ProblemController;
use App\Http\Controllers\Teacher\TagController;
use App\Http\Controllers\Teacher\TeacherProfileController;
use App\Http\Controllers\Adminstrator\TeacherController;
use App\Http\Controllers\Student\AssessmentController as StudentAssessmentController;
use App\Http\Controllers\Student\AuthController as StudentAuthController;
use App\Http\Controllers\Student\CategoryController as StudentCategoryController;
use App\Http\Controllers\Student\ContestController;
use App\Http\Controllers\Student\ProblemController as StudentProblemController;
use App\Http\Controllers\Student\ExamController as StudentExamController;
use App\Http\Controllers\Student\ProfileController;
use App\Http\Controllers\Student\TagController as StudentTagController;
use App\Http\Controllers\Teacher\AuthController as TeacherAuthController;
use App\Http\Controllers\Teacher\SubjectController;
use App\Models\Problem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::post('student/register', [StudentAuthController::class, 'register']);

Route::group(['prefix' => 'adminstrator' , 'middleware' => ['auth:sanctum','adminstrator']] , function(){
    Route::get('teachers', [TeacherController::class, 'index']);
    Route::post('teachers/add', [TeacherController::class, 'addTeacher']);
    Route::delete('teacher/{teacher}', [TeacherController::class, 'deleteTeacher']);
    
    Route::post('change/{changeCategoryRequest}', [RequestController::class, 'accept']);
    Route::get('categories-with-subjects', [AdminstratorCategoryController::class, 'categoriesWithSubjects']);
    Route::get('exams', [AdminstratorExamController::class, 'index']);
    Route::get('exams/{exam}', [AdminstratorExamController::class, 'show']);
    Route::post('add-exam/{subject}', [AdminstratorExamController::class, 'addExamToSubject']);
    Route::get('students', [AdminStudentController::class, 'index']);
    Route::post('students/{student}/change-password', [AdminStudentController::class, 'changeStudentPassword']);
    Route::post('students/import', [AdminStudentController::class, 'importStudents']);
    Route::post('add-teacher2category' , [TeacherController::class , 'assignmentTeacherToCategory']);
    Route::get('categries-no-teacheruniversity_ids' , [AdminstratorCategoryController::class , 'categoriesWihtNoTeacher']);
    Route::group(['prefix' => 'students'] , function(){
        Route::post('distribute' , [AdminStudentController::class , 'distributeCategories']);
    });

    Route::post('problems/add-problem' , [ProblemController::class, 'storeAdmin']);
});
Route::group(['prefix' => 'teacher' , 'middleware' => ['auth:sanctum','teacher']] , function(){
    Route::post('login' , [TeacherAuthController::class , 'login']);
    Route::group(['prefix' => 'profile'] , function(){
        Route::get('/' , [TeacherProfileController::class ,'show']);
        Route::post('/' , [TeacherProfileController::class ,'update']);
        Route::post('change-password' , [TeacherProfileController::class , 'changePassword']) ;
        
    });
    Route::post('add-tag' , [TagController::class , 'addTag']);

    Route::group(['prefix' => 'problems'] , function(){
        Route::post('/fillter' , [StudentProblemController::class , 'filter']);
        Route::post('bank/filter', [StudentProblemController::class, 'bankFilter']);
        Route::post('/' , [ProblemController::class, 'store']);
        Route::delete('/{problem}' , [ProblemController::class , 'delete']);
        Route::get('/' , [ProblemController::class , 'index']);
        Route::get('/bank' , [ProblemController::class , 'showBank']);
        Route::get('/active/{problem}' , [ProblemController::class , 'activate']);
        Route::get('my-problems' , [ProblemController::class , 'myProblems']);
        Route::get('tags' , [TagController::class , 'tags']);
        Route::get('/{problem}', [ProblemController::class, 'show']);
        Route::post('add-tag' , [TagController::class , 'addTag']);
        Route::post('generate-test-cases' , [ProblemController::class , 'generateTestCases']);
        Route::post('generate-sample' , [ProblemController::class,'showSample']);
        Route::post('generateOutputs' , [ProblemController::class , 'generateOutputs']);
    });
    Route::group(['prefix' => 'categories'] , function(){
        Route::get('/min' , [CategoryController::class, 'index']);
        Route::get('/{category}/details', [CategoryController::class, 'getCategoryDetails']);
        Route::get('/{category}/students' , [CategoryController::class , 'getStudents']);
        Route::post('/add-marks' , [MarkController::class , 'addMarks']);
        Route::get('{category}/marksStudents', [MarkController::class, 'showMarks']);
        Route::post('{category}/attendance/',[CategoryController::class , 'checkStudents']);
        Route::post('/{category}' , [CategoryController::class , 'updateCategory']);
        Route::post('{category}/add-student' , [CategoryController::class , 'addStudent']);
    });

    Route::group(['prefix' => 'exams'] , function(){
        Route::post('/edit-student-mark' , [ExamController::class, 'editMarkStudent']);
        Route::post('/edit-student-exam' , [ExamController::class, 'editMarkExamStudent']);
        Route::post('/answers' , [ExamController::class, 'showStudentSolve']);
        Route::get('show/{exam}' , [ExamController::class , 'show']);
        Route::get('{category}/marks' , [ExamController::class  ,'getMarks']); // kassem add to postman collection 
        Route::get('/{category}' ,[ExamController::class , 'subjectExam']); // kassem 
        Route::post('{exam}/update-marks' ,[ ExamController::class , 'updateExamMarks']); // kassem 
    });
    Route::group(['prefix' => 'assessment'] , function(){
        Route::post('/stop/{assessment}' , [AssessmentController::class , 'stopAssessment']);
        Route::get('/{category}' ,[ AssessmentController::class , 'index']) ;

        Route::post('/create' , [AssessmentController::class, 'store']);
        Route::post('/active/{assessment}' , [AssessmentController::class , 'active']);//when active should send the student 
        Route::get('{assessment}/students' , [AssessmentController::class ,  'studentsInAssessment']);
        Route::delete('/{assessment}' , [AssessmentController::class , 'delete']) ;
        
        Route::get('details/{assessment}' , [AssessmentController::class, 'details']);
    });
    Route::group(['prefix' => 'subjects'] , function(){
        Route::get('/', [SubjectController::class, 'index']);
        Route::get('/{subject}/categories', [SubjectController::class, 'subjectCategories']);
    });
    // Route::get('subjects' , [CategoryController::class , 'subjects']);
});

Route::group(['prefix' => 'student' , 'middleware' => ['auth:sanctum','student']] , function(){
    
    Route::group(['prefix' => 'problems'] , function(){
        Route::get('tags', [StudentTagController::class, 'tags']);
        Route::post('solve/{problem}' , [StudentProblemController::class , 'solve']);
        Route::get('/' , [StudentProblemController::class , 'problems']);
        Route::post('fillter' , [StudentProblemController::class , 'filter']);
        Route::get('{problem}' , [StudentProblemController::class , 'show']);
        Route::get('/solves/{problem}' , [StudentProblemController::class , 'solves']);
        Route::get('/solution/{solve}' , [StudentProblemController::class , 'testCases']);
    });
    Route::group(['prefix' => 'profile'] , function(){
        Route::get('/' , [ProfileController::class , 'show']);
        
    });
    Route::group(['prefix' => 'contests'] , function(){
        Route::get('allStudents', [ContestController::class, 'allStudents']);
        Route::get('/all', [ContestController::class, 'index']);
        Route::get('/', [ContestController::class, 'myContests']);
        Route::post('create' , [ContestController::class , 'create']);
        Route::post('{contest}/solve/{problem}' , [ContestController::class , 'solve']);
        Route::post('join/{contest}' , [ContestController::class , 'join']);
        

        Route::get('/{contest}' , [ContestController::class , 'show']) ;
    });
    Route::group(['prefix' => 'categories'] , function(){
        Route::get('/all' , [StudentCategoryController::class ,  'index']) ;
        Route::get('/' , [StudentCategoryController::class , 'myCategories']);
        Route::post('change' , [StudentCategoryController::class , 'changeCategory']);
        Route::get('/{category}' , [StudentCategoryController::class , 'show']);
    });
    Route::group(['prefix' => 'assessment'] , function(){
        Route::get('/{category}' , [StudentAssessmentController::class , 'show']);
        Route::post('solve/{assessment}' ,[StudentAssessmentController::class , 'solveAssessment']);
        Route::get('show-solve/{assessment}' , [StudentAssessmentController::class , 'showSolve']);
    });
    Route::group(['prefix' => 'exams'] , function(){
        Route::get('/', [StudentExamController::class, 'index']);
        Route::get('/{exam}', [StudentExamController::class, 'show']);
        Route::get('/{exam}/show-solve', [StudentExamController::class, 'showStudentExamSolve']);
        Route::post('{exam}/solve', [StudentExamController::class, 'solve']);
        Route::post('{exam}/submit', [StudentExamController::class, 'submit']);
    });
});


Route::post('test' , [ExcelImportController::class , 'test']) ;
Route::get('testf' , [ExcelImportController::class , 'test']);
Route::post('run' , function(Request $request){
    $param['input'] = $request->input ;
    $param['code'] = $request->code ;
    return CodeExecutorController::runCppCodeRemontly($param);
});

Route::get('test' , function (){
    return CodeExecutorController::generateTestCases("5 INTEGER 10 100 INTEGER 10 100 EXIT ");
});

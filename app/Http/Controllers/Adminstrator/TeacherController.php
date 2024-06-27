<?php

namespace App\Http\Controllers\Adminstrator;

use App\Http\Controllers\Controller;
use App\Http\Resources\TeacherDisplayResource;
use App\Models\Category;
use App\Models\Teacher;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class TeacherController extends Controller
{
    public function index() {
        return TeacherDisplayResource::collection(Teacher::all());
    }
    public function assignmentTeacherToCategory(Request $request){
        $request->validate([
            'teacher_id' => 'required|integer',
            'category_id' => 'required|integer'
        ]);
        // return $request ;
        $category = Category::findOrFail($request->category_id);
        
        $category->update([
            'teacher_id' => $request->teacher_id
        ]);
        return response()->json([
            'message' => 'added '
        ] ,200) ;
    }
    public function addTeacher(Request $request) {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'phone_number' => 'required',
        ]);
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 'teacher'
        ]);
        $teacher = $user->teacher()->create(['phone_number' => $request->phone_number]);

        return response()->json([
            'success' => 'teacher added successfully to the system',
            'teacher' => $teacher
        ]);
    }
    public function deleteTeacher(Teacher $teacher) {
        $teacher->delete();
        return response()->json([
            'message' => 'teacher deleted successfully.'
        ]);
    }
}

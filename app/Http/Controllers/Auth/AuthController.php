<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\SetOfStudent;
use App\Models\Student;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Ramsey\Uuid\Type\Integer;

class AuthController extends Controller
{
    public function login (Request $request) {
        $validatedData = $request->validate([
            'email' => ['required'],
            'password' => 'required'
        ]);
        if (is_numeric($request->email)){
            $student = Student::where('university_id', $request->email)->first();
            $user = $student->user;
        if (!Hash::check($request->password, $user->password))
        // if (bcrypt($request->password) != $user->password)
            abort(403, 'wrong password');
        $token = $user->createToken('personal_access_token')->plainTextToken;
        return response()->json([
                'role' => $user->role,
                'token' => $token,
            ]);
        }
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            $user = auth()->user();
            $token = $user->createToken('Personal Token')->plainTextToken;
            return response()->json([
                'role' => $user->role,
                'token' => $token
            ]);
        }
        return response()->json([
            'error' => 'incorrect information' ,
        ],401);
    }
    public function register(Request $request) {
        $request->validate([
            'name' => 'required|string',
            'university_id' => 'required|integer|unique:students,university_id',
            'password' => 'required|min:6|confirmed',
            'email' => 'required|email|unique:users,email'
        ]);
        $data_set = SetOfStudent::where('name', $request->name)
            ->where('number', $request->university_id)
            ->first();
        if ($data_set == NULL)
            abort(402, 'You are not in our databases');
        
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 'student'
        ]);

        $token = $user->createToken('personal_access_token')->plainTextToken;
        
        $user->student()->create($request->all());
         

        return response()->json([
            'message' => 'registered successfully...',
            'token' => $token
        ], 200);
    }
}

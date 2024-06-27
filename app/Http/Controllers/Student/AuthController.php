<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\SetOfStudent;
use App\Models\Student;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request) {
        $request->validate([
            'name' => 'required|string',
            'university_id' => 'required|integer',
            'password' => 'required|min:6|confirmed',
            'email' => 'required|email|unique:users,email'
        ]);
        $data_set = SetOfStudent::where('name', $request->name)
            ->orWhere('number', $request->university_id)
            ->first();
        if ($data_set == NULL)
            abort(402, 'You are not in our databases');
        
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => 'student'
        ]);
        $user->student()->create(['phone_number' => $request->phone_number]);
        
        $token = $user->createToken('personal_access_token')->plainTextToken;
        
        $user->student()->create($request->all());

        return response()->json([
            'message' => 'registered successfully...',
            'token' => $token
        ], 200);
    }
    public function login(Request $request) {
        $request->validate([
            'number_menu' => 'required|integer',   
        ]);
        if ($request->number_menu == 1) {
            $request->validate([
                'university_id' => 'required|integer|exists:students,university_id'
            ]);
            $student = Student::where('university_id', $request->university_id)->first();
            $user = $student->user;
        if (Hash::make($request->password) != $user->password)
            abort(403, 'wrong password');
        $token = $user->createToken('personal_access_token')->plainTextToken;
        return response()->json([
                'message' => 'welcome',
                'token' => $token,
            ]);
        }
        if ($request->number_menu == 2) {
            $request->validate([
            'email' => ['required', 'email'],
            'password' => 'required'
        ]);
        $credentials = $request->only('email', 'password');
        if (auth()->attempt($credentials)) {
            $user = auth()->user();
            $token = $user->createToken('personal_access_token')->plainTextToken;
            return response()->json([
                'token' => $token
            ]);
        }
        return response()->json([
            'error' => 'incorrect information' ,
        ], 401);
        }
    }
}

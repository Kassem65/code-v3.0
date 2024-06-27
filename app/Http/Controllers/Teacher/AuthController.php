<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function login(Request $request){
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'password' => 'required'
        ]);
        $credentials = $request->only('email' , 'password');
        if (auth()->attempt($credentials)){
            $user = auth()->user() ;
            $token = $user->createToken('personal_access_token')->plainTextToken ;
            return response()->json([
                'token' => $token ,
            ]);  
        }
        return response()->json([
            'error' => 'incorrect information'
        ],403);
    }
}

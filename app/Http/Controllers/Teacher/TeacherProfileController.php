<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class TeacherProfileController extends Controller
{
    public function show(){
        return auth()->user() ;
    }
    public function update(Request $request){
        $teacher = auth()->user()->teacher ;
        $user = auth()->user() ;//try with () ;
        $request = $request->except('password');
        $teacher->update($request) ;
        $user->update($request);
        $teacher->user ;
        return response()->json([
            'data' => $teacher , 
            'message' => 'updated successfully'
        ]);
    }
    public function changePassword(Request $request){
        $request->validate([
            'old_password' => 'required|string',
            'new_password' => 'required|string' ,
        ]);
        $user = auth()->user();
        
        // Verify the old password
        if (!Hash::check($request->old_password, $user->password)) {
            return ['message' => 'The old password is incorrect'];
        }

        // Update the password
        $user->update([
            'password' => Hash::make($request->new_password),
        ]);
        return [
            'message' => 'password updated successfully',
            'user' => $user->email     
        ] ; 
    }
}

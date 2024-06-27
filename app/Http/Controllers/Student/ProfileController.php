<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function show() {
        $user = auth()->user();
        $student = $user->student()->first();
        $student['solutions'] = $student->hard + $student->medium + $student->easy;
        $student['detail'] = $user;

        $student['materials'] = $student->categories()
            ->get()
            ->map(function ($catgegory) {
                return [
                    'name' => $catgegory->subject->name,
                    'degree' => $catgegory->pivot->mark,
                    'date' => $catgegory->created_at,
                ];
            });
        
        return $student;
    }
    
    
}

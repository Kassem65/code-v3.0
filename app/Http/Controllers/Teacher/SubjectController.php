<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Subject;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    public function index() {
        return response()->json([
            'subjects' => Subject::all(['id', 'name'])
        ], 200);
    }
    public function subjectCategories(Subject $subject) {
        $categories = Category::where('subject_id', $subject->id)
            ->withCount('students')
            ->get()
            ->map(function ($category) {
                return [
                    'id' => $category->id,
                    'name' => $category->name,
                    'students_count' => $category->students_count
                ];
            });
        
        return response()->json($categories);
    }
}

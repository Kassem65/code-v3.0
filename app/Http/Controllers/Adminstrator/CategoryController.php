<?php

namespace App\Http\Controllers\Adminstrator;

use App\Http\Controllers\Controller;
use App\Http\Resources\CategoriesSubjectsResource;
use App\Models\Category;

class CategoryController extends Controller
{
    public function categoriesWihtNoTeacher(){
        $categories = Category::where('teacher_id' , NULL)->get() ;
        return response()->json([
            'data' => $categories ,
            'message' => 'done'
        ],200);
    }
    public function categoriesWithSubjects() {
        $data = Category::with('teacher', 'subject', 'students')->get();
        return CategoriesSubjectsResource::collection($data);
    }
}

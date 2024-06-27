<?php

namespace App\Http\Controllers\Adminstrator;

use App\Http\Controllers\Controller;
use App\Models\CategoryStudent;
use App\Models\ChangeCategoryRequest;
use Illuminate\Http\Request;

class RequestController extends Controller
{
    public function accept(ChangeCategoryRequest $changeCategoryRequest) {
        
        CategoryStudent::query()
        ->where('student_id', $changeCategoryRequest->student_id)
        ->where('category_id', $changeCategoryRequest->category_id)
        ->update([
            'category_id' => $changeCategoryRequest->new_category
        ]);
        return response()->json([
            'message' => 'request accepted successfully.'
        ]);
    }
}

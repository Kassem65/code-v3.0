<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    public function addTag(Request $request) {
        $request->validate([
            'name' => 'required' 
        ]);
        $tag = Tag::where('name' , $request->name)->first() ;
        if ($tag!== null)
        return response()->json([
            'message' => 'this tag already exist' ,
        ],409) ;
        Tag::create([
            'name' => $request->name
        ]);
        return response()->json([
            'message' => 'tag added succfully'
        ]);
    }
    public function tags(){
         $tags = Tag::all();
         return $tags; 
    }
}

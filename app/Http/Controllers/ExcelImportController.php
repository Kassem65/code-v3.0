<?php

namespace App\Http\Controllers;

use App\Models\SetOfStudent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;


class ExcelImportController extends Controller
{
    public function test(Request $request){
        $request->validate([
            'file' => 'required'
        ]);
        $file = $request->file('file');
        $rows = Excel::toCollection([] , $file)[0];
        foreach($rows as $row){
            if ($row[0] == 'number')continue ;
            SetOfStudent::create([
                'number' =>$row[0] ,
                'name' =>  $row[1]
            ]);
        }
    }
}

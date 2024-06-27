<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CategoryStudent extends Model
{
    use HasFactory;
    protected $table = 'category_student' ;
    protected $fillable = [
        'category_id' ,
        'student_id',
        'attendance_marks',
        'assessment_marks',
        'number_of_assessment',
        'presence',
        'mark',
    ] ;
    

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AssessmentStudent extends Model
{
    use HasFactory;
    protected $table = 'assessment_student' ; 
    protected $fillable = [
        'mark' ,
    ];
}

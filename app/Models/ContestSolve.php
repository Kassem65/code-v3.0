<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContestSolve extends Model
{
    use HasFactory;
    protected $fillable = [
        'problem_id' , 'solve' , 'approved' ,'contest_student_id'
    ];

    public function contestStudent()
    {
        return $this->belongsTo(ContestStudent::class, 'contest_student_id', 'id');
    }
    public function problem()
    {
        return $this->belongsTo(Problem::class);
    }
    

    
}

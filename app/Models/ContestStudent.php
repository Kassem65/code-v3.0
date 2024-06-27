<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContestStudent extends Model
{
    use HasFactory;
    protected $table = 'contest_student' ;
    protected $fillable = ['contest_id' , 'student_id' , 'rank'] ;
    
    public function solvedProblems()
    {
        return $this->hasMany(SolvedProblem::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContestProblem extends Model
{
    use HasFactory;
    protected $table = 'contest_problem' ;
    protected $fillable = ['contest_id' , 'problem_id'] ;
    
}

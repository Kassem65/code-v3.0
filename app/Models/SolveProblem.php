<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolveProblem extends Model
{
    use HasFactory;
    protected $table = 'solve_problem' ;
    protected $fillable  = [
        'student_id' ,'problem_id' , 'student_code' ,'approved'
    ];
    public function solveCases()
    {
        return $this->hasMany(SolveCases::class);
    }
    public function finalCase(){
        return $this->hasone(SolveCases::class)->latestOfMany() ;
    }

    public function problem()
    {
        return $this->belongsTo(Problem::class);
    }
}

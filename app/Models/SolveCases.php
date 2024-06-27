<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolveCases extends Model
{
    use HasFactory;
    protected $fillable = [
        'solve_problem_id' , 'input' , 'output' , 'time'
    ];
    public function solveProblem()
    {
        return $this->belongsTo(SolveProblem::class, 'solve_problem_id');
    }
}

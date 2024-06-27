<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SolvedProblem extends Model
{
    use HasFactory;
    protected $table = 'solved_problems';
    protected $fillable = [
        'contest_student_id', 'problem'
    ];

    public function contestStudent()
    {
        return $this->belongsTo(ContestStudent::class);
    }
}

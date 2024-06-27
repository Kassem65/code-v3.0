<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Problem extends Model
{
    use HasFactory;
    protected $fillable = [
        'time_limit_ms','teacher_id' , 'diffculty','name' , 
        'description', 'teacher_code_solve', 'active', 
        'hint1', 'hint2', 'level', 'in_bank', 'solutions'
    ];
    protected $hidden = [
        'teacher_code_solve'
    ];
    public function teacher(): BelongsTo
    {
        return $this->belongsTo(Teacher::class);
    }

    public function tags(): BelongsToMany
    {
        return $this->belongsToMany(Tag::class);
    }

    public function students(): BelongsToMany
    {
        return $this->belongsToMany(Student::class , '');
    }

    public function testCases(): HasMany
    {
        return $this->hasMany(TestCase::class);
    }
    
    public function testCase(){
        return $this->hasOne(TestCase::class) ;
    }

    public function exams()
    {
        return $this->hasMany(Exam::class);
    }
    public function assessments()
    {
        return $this->hasMany(Assessment::class);
    }
    public function contestSolve()
    {
        return $this->hasMany(ContestSolve::class);
    }
   
  

}

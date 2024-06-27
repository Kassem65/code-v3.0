<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Exam extends Model
{
    use HasFactory;
    protected $fillable = [
      'problem1_id',  'passwd' , 'administrator_id' , 'name' ,'time', 'subject_id' , 'duration'
    ] ;


    public function students()
    {
        return $this->belongsToMany(Student::class, 'exam_student')->withPivot('mark');
    }

    public function admin(): BelongsTo
    {
        return $this->belongsTo(Administrator::class);
    }

    public function trueFalseQuestions(): HasMany
    {
        return $this->hasMany(TrueFalseQuestion::class);
    }
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
    public function problem1()
    {
        return $this->belongsTo(Problem::class ,'problem1_id');
    }
    public function problem2()
    {
        return $this->belongsTo(Problem::class ,'problem2_id');
    }
}

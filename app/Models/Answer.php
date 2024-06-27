<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Answer extends Model
{
    use HasFactory;
    protected $fillable =['student_exam_id' , 'true_false_question_id' , 'answer'];
    
    public function studentExam(): BelongsTo
    {
        return $this->belongsTo(ExamStudent::class);
    }
  
    public function trueFalseQuestion()
    {
        return $this->belongsTo(TrueFalseQuestion::class);
    }
    
}

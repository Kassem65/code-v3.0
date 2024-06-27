<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TrueFalseQuestion extends Model
{
    use HasFactory;
    protected $fillable = [
        'exam_id', 'question_text', 'choise1', 'choise2', 'choise3', 'choise4', 'correct'
    ];

    public function exam()
    {
        return $this->belongsTo(Exam::class);
    }

    public function answer()
    {
        return $this->hasOne(Answer::class);
    }
}

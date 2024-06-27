<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ExamStudent extends Model
{
    use HasFactory;
    protected $table = 'exam_student';
    protected $fillable = [
        'check'
    ];
    protected $hidden = [ 'created_at' , 'updated_at'];
    
    public function answers()
    {
        return $this->hasMany(Answer::class);
    }
}

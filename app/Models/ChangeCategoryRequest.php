<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChangeCategoryRequest extends Model
{
    use HasFactory;
    protected $fillable = [
        'new_category' , 'old_category' , 'student_id' , 'reason' ,
    ];
    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}

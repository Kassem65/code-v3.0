<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'subject_id',
        'teacher_id',
        'number_of_lessons',
        'mark_of_commings',
        'mark_of_ratings',
        ] ;

    public function students()
    {
        return $this->belongsToMany(Student::class, 'category_student')
            ->withPivot('attendance_marks','assessment_marks','number_of_assessment','mark','presence');
    }
    public function subjectTeacher()
    {
        return $this->belongsTo(SubjectTeacher::class, 'subject_teacher_id', 'id');
    }
    public function assessments()
    {
        return $this->hasMany(Assessment::class);
    }
    public function assessment(){
        return $this->hasOne(Assessment::class)->first();
    }
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }
    
}

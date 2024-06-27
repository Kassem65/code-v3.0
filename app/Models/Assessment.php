<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Assessment extends Model
{
    use HasFactory;
    protected $fillable = [
      'name',  'problem_id' , 'category_id' , 'teacher_id' , 'active' 
    ];
    public function teacher()
    {
        return $this->belongsTo(Teacher::class);
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function problem()
    {
        return $this->belongsTo(Problem::class);
    }
    
    public function students()
    {
        return $this->belongsToMany(Student::class)
            ->withPivot('mark' , 'solve');
    }

}

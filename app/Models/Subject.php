<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;


class Subject extends Model
{
    use HasFactory;
    protected $fillable = ['name' , 'total_mark', 'exam_mark'];

    public function teachers(): BelongsToMany
    {
        return $this->belongsToMany(Teacher::class);
    }
    public function categories()
    {
        return $this->hasMany(Category::class);
    }
    public function exam() 
    {
        return $this->hasOne(Exam::class)->latestOfMany();
    }
    public function requests()
    {
        return $this->hasMany(ChangeCategoryRequest::class);
    }
    public function students()
    {
        return $this->belongsToMany(Student::class);
    }
}

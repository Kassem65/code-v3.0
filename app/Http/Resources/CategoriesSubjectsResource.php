<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CategoriesSubjectsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'class' => $this->id,
            'subject' => $this->subject->name,
            'number_of_students' => count($this->students),
            'teacher_name' => $this->teacher->user->name ?? NULL,
            'students' => $this->students->map(function ($student) {
                return [
                    'student_id' => $student->id,
                    'student_name' => $student->user()->first()['name'],
                    'student_email' => $student->user()->first()['email'],
                    'phone_number' => $student->phone_number,
                    'hint_count' => $student->hint_count,
                    'points' => $student->points,
                    'rate' => $student->rate,
                    'date_of_birth' => $student->date_of_birth,
                    'easy' => $student->easy,
                    'medium' => $student->medium,
                    'hard' => $student->hard,
                ];
            })
        ]; 
    }
}

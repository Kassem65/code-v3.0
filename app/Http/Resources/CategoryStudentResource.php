<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CategoryStudentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'student_id' => $this->id,
            'student_name' => $this->user->name,
            'presence' => $this->pivot->presence ,
            'exam_mark' =>(count($this->exams) == 0) ? 0  : $this->exams[0]->pivot->mark ,
            'tests' => $this->pivot->number_of_assessment,
            'total_mark' => $this->pivot->mark ,
            'exam_id' => (count($this->exams) == 0) ? 0 : $this->exams[0]->id 
            
        ];
    }
}

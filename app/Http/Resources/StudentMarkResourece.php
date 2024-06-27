<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class StudentMarkResourece extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        
        return [
            'id' => $this->university_id,
            'name' => $this->user->name ,
            'attendance_mark' => $this->attendance_mark,
            'assessment_mark' => $this->assessment_mark ,
            'exam_mark' => $this->exam_mark ,
            'total' => $this->total ,
        ];
    }
}

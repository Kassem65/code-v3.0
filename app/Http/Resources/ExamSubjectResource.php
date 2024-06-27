<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ExamSubjectResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'subject' => $this->subject->name,
            'exam_date' => $this->time,
            'problem' => $this->problem1,
            'tests' => $this->problem1->testCases()->get()->map(function ($testCase) {
                return [
                    'id' => $testCase->id,
                    'input' => $testCase->input,
                    'output' => $testCase->output
                ];
            }),
            'tags' => $this->problem1()->first()->tags,
            'teacher_solve_code' => $this->problem1->teacher_code_solve,
            'questions' => $this->trueFalseQuestions,
        ];
    }
}

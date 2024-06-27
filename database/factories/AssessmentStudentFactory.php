<?php

namespace Database\Factories;

use App\Models\Assessment;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\AssessmentStudent>
 */
class AssessmentStudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'assessment_id' => Assessment::inRandomOrder()->value('id') ,
            'student_id' => Student::inRandomOrder()->value('id') , 
            'mark' => rand(50,100) ,
        ];
    }
}

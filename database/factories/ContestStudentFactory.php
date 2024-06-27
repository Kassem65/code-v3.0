<?php

namespace Database\Factories;

use App\Models\Contest;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ContestStudent>
 */
class ContestStudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'contest_id' => Contest::inRandomOrder()->value('id'),
            'student_id' => Student::inRandomOrder()->value('id'),
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\Problem;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\SolveProblem>
 */
class SolveProblemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'problem_id' => Problem::inRandomOrder()->value('id'),
            'student_id' => Student::inRandomOrder()->value('id'),
            'student_code' => $this->faker->text,
            'approved' => $this->faker->boolean,
        ];
    }
}

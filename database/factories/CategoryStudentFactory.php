<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\CategoryStudent>
 */
class CategoryStudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'category_id' => Category::inRandomOrder()->value('id'),
            'student_id' => Student::inRandomOrder()->value('id'),
            'mark' => $this->faker->numberBetween(1, 10),
            'attendance_marks' => $this->faker->randomFloat(2, 0, 10),
            'assessment_marks' => $this->faker->randomFloat(2, 0, 10),
            'number_of_assessment' => $this->faker->numberBetween(1, 5),
        ];
    }
}

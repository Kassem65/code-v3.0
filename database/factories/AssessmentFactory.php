<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Problem;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Assessment>
 */
class AssessmentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'category_id'=>Category::inRandomOrder()->value('id'),
            'teacher_id'=>Teacher::inRandomOrder()->value('id'),
            'problem_id'=>Problem::inRandomOrder()->value('id'),
            
        ];
    }
}

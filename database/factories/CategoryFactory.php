<?php

namespace Database\Factories;

use App\Models\Subject;
use App\Models\SubjectTeacher;
use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Category>
 */
class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->word . '_' . random_int(1,10),
            'number_of_lessons' => $this->faker->numberBetween(1, 20),
            'number_of_ratings' => $this->faker->numberBetween(1, 100),
            'mark_of_commings' => $this->faker->randomFloat(2, 0, 10),
            'mark_of_ratings' => $this->faker->randomFloat(2, 0, 10),
            'subject_id' => Subject::inRandomOrder()->value('id'),
            'teacher_id' => Teacher::inRandomOrder()->value('id')
        ];
    }
}

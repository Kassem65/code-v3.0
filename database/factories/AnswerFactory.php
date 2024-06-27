<?php

namespace Database\Factories;

use App\Models\ExamStudent;
use App\Models\TrueFalseQuestion;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Answer>
 */
class AnswerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'exam_student_id' => ExamStudent::inRandomOrder()->value('id'),
            'true_false_question_id' => TrueFalseQuestion::inRandomOrder()->value('id'),
            'answer' => $this->faker->text,
        ];
    }
}

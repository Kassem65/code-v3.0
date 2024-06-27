<?php

namespace Database\Factories;

use App\Models\Exam;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\TrueFalseQuestion>
 */
class TrueFalseQuestionFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'exam_id' => Exam::inRandomOrder()->value('id'),
            'question_text' => $this->faker->text,
            'choise1' => $this->faker->word,
            'choise2' => $this->faker->word,
            'choise3' => $this->faker->word,
            'choise4' => $this->faker->word,
            'correct' => $this->faker->numberBetween(1, 4),
        ];
    }
}

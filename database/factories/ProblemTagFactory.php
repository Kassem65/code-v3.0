<?php

namespace Database\Factories;

use App\Models\Problem;
use App\Models\Tag;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ProblemTag>
 */
class ProblemTagFactory extends Factory
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
            'tag_id' => Tag::inRandomOrder()->value('id'),
        ];
    }
}

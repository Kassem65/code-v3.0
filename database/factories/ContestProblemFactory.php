<?php

namespace Database\Factories;

use App\Models\Contest;
use App\Models\Problem;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ContestProblem>
 */
class ContestProblemFactory extends Factory
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
            'problem_id' => Problem::inRandomOrder()->value('id'),
        ];
    }
}

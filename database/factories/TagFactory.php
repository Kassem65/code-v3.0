<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tag>
 */
class TagFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $tags = ['binary search', 'dynamic programming', 'implementation', 
            'sorting', 'math', 'number theory', 'geometry', 'graph', 'trees',
            'greedy', 'brute force', 'bitmasks', 'two pointers', 'hashing'
        ];
        return [
            'name' => $this->faker->randomElement($tags),
        ];
    }
}

<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Student>
 */
class StudentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => User::factory()->create(['role'=>'student'])->id,
            'phone_number' => $this->faker->phoneNumber,
            'date_of_birth' => $this->faker->date,
            'university_id' => $this->faker->randomNumber(5),
        ];
    }
     
}

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
        $Category = Category::inRandomOrder()->first() ;
        return [
            'name' => 'assessment' . rand(0,10),
            'category_id'=>$Category->id,
            'teacher_id'=>$Category->teacher->id,
            'problem_id'=>Problem::inRandomOrder()->value('id'),
        ];
    }
}

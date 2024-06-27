<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::create([
            'name' => 'Ammar Jokhadar' ,
            'email_verified_at' => now() ,
            'email' => 'DR.ammarJokhadar@gmail.com',
            'password' => Hash::make('passwordSuper'),
            'remember_token' => Str::random(10),
            'role' => 'adminstrator'
        ]);
        
        \App\Models\User::factory()->create();
        \App\Models\Student::factory(10)->create();
        \App\Models\Teacher::factory(10)->create();
        \App\Models\Administrator::factory(10)->create();
        \App\Models\Tag::factory(10)->create();
        \App\Models\Problem::factory(10)->create();
        \App\Models\ProblemTag::factory(10)->create();
        \App\Models\SolveProblem::factory(10)->create();
        \App\Models\TestCase::factory(10)->create();
        \App\Models\Subject::factory(5)->create();
        \App\Models\Exam::factory(10)->create();
        \App\Models\ExamStudent::factory(10)->create();
        \App\Models\TrueFalseQuestion::factory(10)->create();
        \App\Models\Answer::factory(10)->create();
        \App\Models\Contest::factory(10)->create();
        \App\Models\ContestProblem::factory(10)->create();
        \App\Models\ContestStudent::factory(10)->create();
        \App\Models\Category::factory(10)->create();
        \App\Models\CategoryStudent::factory(10)->create();
        \App\Models\Assessment::factory(10)->create();
        
    }
}

<?php

namespace Database\Factories;

use App\Models\Problem;
use App\Models\TestCase;
use Illuminate\Database\Eloquent\Factories\Factory;
use PhpOffice\PhpSpreadsheet\Calculation\Financial\Securities\Price;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\TestCase>
 */
class TestCaseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $problem = Problem::inRandomOrder()->first();
        $test_case = [
            [ // array summ
                'input' => '3 1 4 5',
                'output' => '10',
               
            ],
            [
                'input' => '5 2 2 4 4 5',
                'output' => '17',
               
            ],
            [
                'input' => '4 1000 1000 1000 1000',
                'output' => '4000',
               
            ],
            [ // max
                'input' => '5 1 3 4 2 8',
                'output' => '8',
               
            ],
            [
                'input' => '6 1 4 7 2 3 4',
                'output' => '7',
               
            ],
            [
                'input' => '8 1 3 5 4 2 18 12 17',
                'output' => '18',
               
            ],
            [ // sort
                'input' => '5 5 4 3 2 1',
                'output' => '1 2 3 4 5',
               
            ],
            [
                'input' => '6 2 1 4 5 6 3',
                'output' => '1 2 3 4 5 6',
               
            ],
            [
                'input' => '7 35 22 43 65 78 11 15',
                'output' => '11 15 22 35 43 65 78',
               
            ],
        ];
        $k=0;
        if ($problem->name == 'max number') $k=3 ;
        if ($problem->name == 'sort the array') $k=6 ;
        for ($i = 0 ; $i<3 ; $i++){
            TestCase::create([
                'input' => $test_case[$i+$k]['input'],
                'output' => $test_case[$i+$k]['output'],
                'problem_id' => $problem->id ,
            ]);
        }
        return [

            'input' => $test_case[0]['input'],
            'output' => $test_case[0]['output'],
            'problem_id' => Problem::where('name', 'array sum')->first()->id,
            
        ];
    }
}

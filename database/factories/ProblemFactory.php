<?php

namespace Database\Factories;

use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Problem>
 */
class ProblemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array {
    $problems = [
        [
            "name" => 'array sum',
            "code" => "#include<iostream>
                using namespace std ;
                int main(){
                    int x ;  
                    cin>>x ;
                    int sum = 0 ;
                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}
                    cout << sum ;
                    return 0 ;
                }",
            'description' => 'Given an array of integers nums and an integer target, return the sum of elements.

            You can return the answer in any order.'
        ],
        [
            "name" => 'max number',
            "code" => "#include<iostream>
                using namespace std ;
                int main(){
                    int x ;  
                    cin>>x ;
                    int max = 0 ;
                    for (int i = 0 ; i< x ; i++) {
                    int k ; cin >> k;
                    if (k > max)
                        max = k;
                }
                    cout << max;
                    return 0;
                }",
            'description' => 'Given an array of integers nums and an integer target, return the max number of elements.

            You can return the answer in any order.'
        ],
        [
            "name" => 'sort the array',
            "code" => "#include<iostream>
                using namespace std ;
                int main(){
                    int x ;  
                    cin>>x ;
                    int a[x];
                    for (int i = 0 ; i< x ; i++) cin >> a[i];
                    sort(a, a+x);
                    for (int i = 0 ; i< x ; i++) cout << a[i];
                    return 0;
                }",
            'description' => 'Given an array of integers nums and an integer target, sort the array in ascending order.'
        ],
    ];
    $rand = random_int(0,2);
        return [
            'name' => $problems[$rand]['name'],
            'description' => $this->faker->paragraph,
            'teacher_code_solve' => $problems[$rand]['code'],
            'teacher_id' => 1,
            'level' => $rand ,
            'time_limit_ms' => 1,
            'in_bank' => rand(0,1)
        ];
    }
}

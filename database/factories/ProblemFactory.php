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
    public function definition(): array

    {
        $p = [] ;
        $p[] = [ 
        "code" => "#include<iostream>
                using namespace std ;
                int main(){
                    int x ; int y ;
                    cin>>x >> y ;
                    cout << x + y;
                    return 0 ;
                }",
        "name" => 'add tow number' ,
    ];
    $p[] = [ 
        "code" => "#include<iostream>
                using namespace std ;
                int main(){
                    int x ;  ;
                    cin>>x ;
                    int sum = 0 ;
                    for (int i = 0 ; i< x ; i++){int k ; cin >> k ; sum+=k;}
                    cout << sum ;
                    return 0 ;
                }",
        "name" => 'array sum' ,
    ];
    $p[] = [
        "code" => "#include<iostream>
                using namespace std ;
                int main(){
                    int x ;  ;
                    cin>>x ;
                    int a[x] ;
                    for (int i = 0 ; i< x ; i++){cin >> a[i]}
                    max = a[0] ;
                    for (int i = 0 ; i< x ; i++){
                        if (a[i] > max ) max = a[i] ;
                    }
                    cout << max;
                    return 0 ;
                }",
        "name" => 'max val' ,
    ];
    
    $rand = random_int(0,2);
        return [
            'name' => $p[$rand]['name'],
            'description' => $this->faker->paragraph,
            'teacher_code_solve' => $p[$rand]['code'] ,
            'teacher_id' => Teacher::inRandomOrder()->value('id'),
            'level' => $rand ,
            'time_limit_ms' => 1
        ];
    }
}

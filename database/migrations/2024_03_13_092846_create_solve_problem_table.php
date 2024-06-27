<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSolveProblemTable extends Migration
{
    public function up()
    {
        Schema::create('solve_problem', function (Blueprint $table) {
            $table->id();
            $table->foreignId('problem_id')->constrained()->onDelete('cascade');
            $table->foreignId('student_id')->constrained()->onDelete('cascade');
            $table->text('student_code');
            $table->boolean('approved');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('solve_problem');
    }
}

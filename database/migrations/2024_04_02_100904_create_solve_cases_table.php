<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('solve_cases', function (Blueprint $table) {
            $table->id();
            $table->text('input') ;
            $table->text('output');
            $table->foreignID('solve_problem_id')->constrained('solve_problem')->onDelete('cascade');
            $table->float('time');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('solve_cases');
    }
};

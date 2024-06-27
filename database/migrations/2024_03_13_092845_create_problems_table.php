<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProblemsTable extends Migration
{
    public function up()
    {
        Schema::create('problems', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('description');
            $table->integer('level')->default(800);
            $table->text('teacher_code_solve');
            $table->float('time_limit_ms')->default(0.0) ;
            $table->boolean('active')->default(0);
            $table->string('diffculty')->default('easy');
            $table->integer('solutions')->default(0) ;
            $table->text('hint1')->nullable();
            $table->text('hint2')->nullable();
            $table->boolean('in_bank')->default(1);
            $table->foreignId('teacher_id')->constrained('teachers')->onDelete('cascade');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('problems');
    }
}

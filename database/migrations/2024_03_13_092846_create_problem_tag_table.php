<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProblemTagTable extends Migration
{
    public function up()
    {
        Schema::create('problem_tag', function (Blueprint $table) {
            $table->id();
            $table->foreignId('problem_id')->constrained()->onDelete('cascade');
            $table->foreignId('tag_id')->constrained()->onDelete('cascade');
            // $table->unique([
            //     'problem_id',
            //     'tag_id'
            // ]);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('problem_tag');
    }
}

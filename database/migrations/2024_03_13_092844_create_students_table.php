<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('phone_number')->nullable();
            $table->integer('hint_count')->default(2);
            $table->integer('points')->default(0);
            $table->integer('rate')->default(0) ;
            $table->date('date_of_birth')->nullable();
            $table->integer('easy')->default(0);
            $table->integer('medium')->default(0);
            $table->integer('hard')->default(0);
            $table->integer('university_id')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('students');
    }
}


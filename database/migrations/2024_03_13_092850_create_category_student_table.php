<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoryStudentTable extends Migration
{
    public function up()
    {
        Schema::create('category_student', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')->constrained()->onDelete('cascade');
            $table->foreignId('student_id')->constrained()->onDelete('cascade');
            $table->integer('mark')->nullable();
            $table->float('attendance_marks')->nullable();
            $table->float('assessment_marks')->nullable();
            $table->integer('presence')->default(0);
            $table->integer('number_of_assessment')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('class_student');
    }
}

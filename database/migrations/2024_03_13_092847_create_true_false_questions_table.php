<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTrueFalseQuestionsTable extends Migration
{
    public function up()
    {
        Schema::create('true_false_questions', function (Blueprint $table) {
            $table->id();
            $table->foreignId('exam_id')->constrained()->onDelete('cascade');
            $table->text('question_text');
            $table->string('choise1');
            $table->string('choise2');
            $table->string('choise3');
            $table->string('choise4');
            $table->integer('correct');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('true_false_questions');
    }
}

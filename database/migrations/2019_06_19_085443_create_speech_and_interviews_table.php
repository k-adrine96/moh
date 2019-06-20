<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSpeechAndInterviewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('speech_and_interviews', function (Blueprint $table) {
            $table->increments('id');
            $table->string('file_name');
            $table->string('file_upload')->nullable();
            $table->string('file_url')->nullable();
            $table->string('file_icon');
            $table->string('file_date');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('speech_and_interviews');
    }
}

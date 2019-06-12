<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePagesTextsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pages_texts', function (Blueprint $table) {
            $table->increments('id');
            $table->string('page_name');
            $table->string('page_slug');
            $table->longText('page_text1');
            $table->longText('page_text2');
            $table->longText('page_text3');
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
        Schema::dropIfExists('pages_texts');
    }
}

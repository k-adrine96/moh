<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInformativesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('informatives', function (Blueprint $table) {
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
        Schema::dropIfExists('informatives');
    }
}

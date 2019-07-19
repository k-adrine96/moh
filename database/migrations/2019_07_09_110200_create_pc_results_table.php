<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePcResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pc_results', function (Blueprint $table) {
            $table->increments('id');
            $table->string('year')->nullable();
            $table->string('file_name');
            $table->string('file_upload')->nullable();
            $table->string('file_url')->nullable();
            $table->date('file_date');
            $table->integer('order')->default(1);
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
        Schema::dropIfExists('pc_results');
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDynamicSubPageIntermediateTablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dynamic_intermediate_table', function(Blueprint $table){
            $table->dropForeign('dynamic_sub_page_id');
            $table->dropColumn('dynamic_sub_page_id');
        });

        Schema::create('dynamic_sub_page_intermediate', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('dynamic_page_file_id');
            $table->unsignedBigInteger('dynamic_sub_page_id')->nullable();

            $table->foreign('dynamic_page_file_id')->references('id')->on('dynamic_page_files')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreign('dynamic_sub_page_id')->references('id')->on('dynamic_sub_pages')
                ->onUpdate('cascade')
                ->onDelete('cascade');
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
        Schema::dropIfExists('dynamic_sub_page_intermediate_tables');
    }
}

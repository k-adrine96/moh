<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDynamicPageFilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dynamic_page_files', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->longText('file')->nullable();
            $table->timestamp('date')->nullable();
            $table->bigInteger('order')->default(1);
            $table->timestamps();
        });

        Schema::create('dynamic_sections', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->longText('slug')->nullable();
            $table->bigInteger('order')->default(1);
            $table->boolean('display')->default(1);
            $table->timestamps();
        });

        Schema::create('dynamic_pages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->longText('slug')->nullable();
            $table->bigInteger('order')->default(1);
            $table->boolean('display')->default(1);
            $table->unsignedBigInteger('dynamic_section_id')->nullable();

            $table->foreign('dynamic_section_id')->references('id')->on('dynamic_sections')
                ->onDelete('cascade')
                ->onUpdate('cascade');
            $table->timestamps();
        });

        Schema::create('dynamic_sub_pages', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->longText('slug')->nullable();
            $table->bigInteger('order')->default(1);
            $table->boolean('display')->default(1);
            $table->unsignedBigInteger('dynamic_page_id');

            $table->foreign('dynamic_page_id')->references('id')->on('dynamic_pages')
                ->onDelete('cascade')
                ->onUpdate('cascade');
            $table->timestamps();
        });

        Schema::create('dynamic_intermediate_table', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('dynamic_page_file_id');
            $table->unsignedBigInteger('dynamic_page_id')->nullable();
            $table->unsignedBigInteger('dynamic_sub_page_id')->nullable();

            $table->foreign('dynamic_page_file_id')->references('id')->on('dynamic_page_files')
                ->onUpdate('cascade')
                ->onDelete('cascade');
            $table->foreign('dynamic_page_id')->references('id')->on('dynamic_pages')
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
        Schema::dropIfExists('dynamic_intermediate_table');
        Schema::dropIfExists('dynamic_sub_pages');
        Schema::dropIfExists('dynamic_pages');
        Schema::dropIfExists('dynamic_sections');
        Schema::dropIfExists('dynamic_page_files');
    }
}

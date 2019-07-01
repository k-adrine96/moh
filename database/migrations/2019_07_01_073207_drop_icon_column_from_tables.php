<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DropIconColumnFromTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('informatives', function(Blueprint $table) {
            $table->dropColumn('file_icon');
        });
        Schema::table('legal_acts', function(Blueprint $table) {
            $table->dropColumn('icon');
        });
        Schema::table('press_releases', function(Blueprint $table) {
            $table->dropColumn('file_icon');
        });
        Schema::table('reports', function(Blueprint $table) {
            $table->dropColumn('file_icon');
        });
        Schema::table('researches', function(Blueprint $table) {
            $table->dropColumn('file_icon');
        });
        Schema::table('speech_and_interviews', function(Blueprint $table) {
            $table->dropColumn('file_icon');
        });
        Schema::table('statistics', function(Blueprint $table) {
            $table->dropColumn('file_icon');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('informatives', function(Blueprint $table) {
            $table->string('file_icon');
        });
        Schema::table('legal_acts', function(Blueprint $table) {
            $table->string('icon');
        });
        Schema::table('press_releases', function(Blueprint $table) {
            $table->string('file_icon');
        });
        Schema::table('reports', function(Blueprint $table) {
            $table->string('file_icon');
        });
        Schema::table('researches', function(Blueprint $table) {
            $table->string('file_icon');
        });
        Schema::table('speech_and_interviews', function(Blueprint $table) {
            $table->string('file_icon');
        });
        Schema::table('statistics', function(Blueprint $table) {
            $table->string('file_icon');
        });
    }
}

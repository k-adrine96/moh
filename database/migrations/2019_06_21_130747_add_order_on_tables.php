<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOrderOnTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::table('announcements', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('cover_photos', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('homepage_sliders', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('informatives', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('minister_info_categories', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('minister_infos', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('minister_pages', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('minister_staffs', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('ministry_staffs', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('news', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('pages_texts', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('partners', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('press_releases', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('reports', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('researches', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('speech_and_interviews', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('statistics', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('videos', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('announcements', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('cover_photos', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('homepage_sliders', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('informatives', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('minister_info_categories', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('minister_infos', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('minister_pages', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('minister_staffs', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('ministry_staffs', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('news', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('pages_texts', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('partners', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('press_releases', function (Blueprint $table) {
            $table->integer('order')->default(1);
        });
        Schema::table('reports', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('researches', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('speech_and_interviews', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('statistics', function (Blueprint $table) {
            $table->dropColumn('order');
        });
        Schema::table('videos', function (Blueprint $table) {
            $table->dropColumn('order');
        });
    }
}

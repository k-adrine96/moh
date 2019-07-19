<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DynamicPageVideoAndCoverPhoto extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dynamic_pages', function (Blueprint $table) {
            $table->longText('video')->nullable();
            $table->longText('cover_photo')->nullable();
            $table->longText('description')->nullable();
        });
        Schema::table('dynamic_sub_pages', function (Blueprint $table) {
            $table->longText('video')->nullable();
            $table->longText('cover_photo')->nullable();
            $table->longText('description')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dynamic_pages', function (Blueprint $table) {
            $table->dropColumn('video');
            $table->dropColumn('cover_photo');
            $table->dropColumn('description');
        });
        Schema::table('dynamic_sub_pages', function (Blueprint $table) {
            $table->dropColumn('video');
            $table->dropColumn('cover_photo');
            $table->dropColumn('description');
        });
    }
}

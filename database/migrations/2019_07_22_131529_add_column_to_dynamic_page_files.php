<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnToDynamicPageFiles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dynamic_page_files', function (Blueprint $table) {
            $table->integer('file_url')->nullable()->after('file');
            $table->integer('parent_id')->nullable()->after('date');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dynamic_page_files', function (Blueprint $table) {
            $table->dropColumn('file_url');
            $table->dropColumn('parent_id');
        });
    }
}

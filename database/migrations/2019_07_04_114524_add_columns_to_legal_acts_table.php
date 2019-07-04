<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToLegalActsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('legal_acts', function (Blueprint $table) {
            $table->string('file_upload')->nullable()->change();
            $table->string('file_url')->nullable()->after('file_upload');
            $table->integer('parent_id')->nullable()->after('type_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('legal_acts', function (Blueprint $table) {
            //
        });
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSsDrugMedicalExpertFilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ss_drug_medical_expert_files', function (Blueprint $table) {
            $table->increments('id');
            $table->longText('file_name');
            $table->string('file_upload')->nullable();
            $table->string('file_url')->nullable();
            $table->date('file_date');
            $table->integer('parent_id')->nullable();
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
        Schema::dropIfExists('ss_drug_medical_expert_files');
    }
}

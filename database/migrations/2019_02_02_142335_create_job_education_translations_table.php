<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobEducationTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_education_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('job_education_id')->unsigned();
            $table->string('name');
            $table->string('locale')->index();
            
            $table->unique(['job_education_id','locale']);
            $table->foreign('job_education_id')->references('id')->on('job_educations')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_education_translations');
    }
}

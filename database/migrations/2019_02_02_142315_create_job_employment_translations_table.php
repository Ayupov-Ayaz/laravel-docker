<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobEmploymentTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('job_employment_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('job_employment_id')->unsigned();
            $table->string('name');
            $table->string('locale')->index();
            
            $table->unique(['job_employment_id','locale']);
            $table->foreign('job_employment_id')->references('id')->on('job_employments')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('job_employment_translations');
    }
}

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJobsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jobs', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('salary')->unsigned();
            $table->integer('job_employment_id')->unsigned();
            $table->integer('job_education_id')->unsigned();
            $table->integer('city_id')->unsigned();
            $table->foreign('job_employment_id')->references('id')->on('job_employments')->onDelete('restrict');
            $table->foreign('job_education_id')->references('id')->on('job_educations')->onDelete('restrict');
            $table->foreign('city_id')->references('id')->on('cities')->onDelete('restrict');
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
        Schema::dropIfExists('jobs');
    }
}

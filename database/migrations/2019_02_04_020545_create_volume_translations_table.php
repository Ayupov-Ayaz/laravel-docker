<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVolumeTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('volume_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('volume_id')->unsigned();
            $table->string('name');
            $table->string('locale')->index();

            $table->unique(['volume_id','locale'], 'vol_trans_vol_id_locale_unique');
            $table->foreign('volume_id')->references('id')->on('volumes')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('volume_translations');
    }
}

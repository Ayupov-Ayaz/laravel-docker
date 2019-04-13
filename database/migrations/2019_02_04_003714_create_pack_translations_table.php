<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePackTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pack_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('pack_id')->unsigned();
            $table->string('name');
            $table->string('locale')->index();

            $table->unique(['pack_id','locale'], 'pack_trans_pack_id_locale_unique');
            $table->foreign('pack_id')->references('id')->on('packs')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pack_translations');
    }
}

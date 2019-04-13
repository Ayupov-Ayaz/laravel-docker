<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductAdvantageTranslationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_advantage_translations', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('product_advantage_id')->unsigned();
            $table->string('name');
            $table->string('locale')->index();

            $table->unique(['product_advantage_id','locale'], 'advantage_trans_advantage_id_locale_unique');
            $table->foreign('product_advantage_id')->references('id')->on('product_advantages')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_advantage_translations');
    }
}

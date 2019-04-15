<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('thumb'); // список
            $table->string('image'); // в товаре
            $table->string('youtube');
            $table->integer('fat'); // жирность
            $table->integer('exp'); // срок годности
            $table->integer('packs'); // коллич. в упаковке
            $table->integer('calorie');
            $table->integer('temperature_from');
            $table->integer('temperature_to');
            $table->boolean('pack1');
            $table->boolean('pack2');
            $table->boolean('volume1');
            $table->boolean('volume2');
            $table->boolean('volume3');
            $table->boolean('volume4');
            $table->integer('category_id')->unsigned();
            $table->integer('firm_id')->unsigned();
            $table->integer('product_type_id')->unsigned();
            $table->timestamps();
            
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('restrict');
            $table->foreign('firm_id')->references('id')->on('firms')->onDelete('restrict');
            $table->foreign('product_type_id')->references('id')->on('product_types')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}

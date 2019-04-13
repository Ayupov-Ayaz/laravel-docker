<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ChangeValuesAndPacksProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn(['volume1', 'volume2', 'volume3', 'volume4', 'pack1', 'pack2']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->boolean('pack1')->default(false);
            $table->boolean('pack2')->default(false);
            $table->boolean('volume1')->default(false);
            $table->boolean('volume2')->default(false);
            $table->boolean('volume3')->default(false);
            $table->boolean('volume4')->default(false);
        });
    }
}

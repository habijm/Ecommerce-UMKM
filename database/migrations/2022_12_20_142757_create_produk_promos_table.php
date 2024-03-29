<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProdukPromosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('produk_promos', function (Blueprint $table) {
            $table->Bigincrements('id');
            $table->unsignedBigInteger('produk_id');
            $table->decimal('harga_awal', 16, 2)->default(0);
            $table->decimal('harga_akhir', 16, 2)->default(0);
            $table->integer('diskon_persen')->default(0);
            $table->decimal('diskon_nominal', 16, 2)->default(0);
            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('produk_id')->references('id')->on('produks')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('produk_promos');
    }
}

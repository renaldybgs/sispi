<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQrisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qris', function (Blueprint $table) {
            $table->id();
            $table->dateTime('waktu_assign_project');
            $table->unsignedBigInteger('id_pketerangan')->nullable();
            $table->unsignedBigInteger('id_pstat');
            $table->unsignedBigInteger('id_product');
            $table->unsignedBigInteger('id_mitra');
            $table->dateTime('surat_rekomendasi')->nullable();
            $table->string('no_rekomendasi', 301)->nullable();
            $table->string('jenis_qrisbi', 301)->nullable();
            $table->string('ijin_qrisbi', 301)->nullable();
            $table->datetime('tgl_ijinbi')->nullable();
            $table->unsignedBigInteger('stats_temp')->nullable();    
            $table->string('pketerangan_status')->nullable();
            $table->string('notes_project', 301)->nullable(); 
            $table->dateTime('last_updated')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('qris');
    }
}

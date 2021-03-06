<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMitrasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mitras', function (Blueprint $table) {
            $table->id();
            $table->string('nama_mitra', 255);
            $table->string('jenis', 20)->nullable();
            $table->string('keanggotaan', 15)->nullable();
            $table->string('alamat', 255)->nullable();
            $table->string('nama_pic', 20)->nullable();
            $table->string('email', 255)->nullable();
            $table->string('data_agreement', 25)->nullable();
            $table->string('reg_numb', 15)->nullable();
            $table->string('no_anggota', 15)->nullable();
            $table->string('added_by', 5);
            $table->string('modified_by', 3)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mitras');
    }
}

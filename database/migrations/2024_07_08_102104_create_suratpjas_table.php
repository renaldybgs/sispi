<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSuratpjasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('suratpjas', function (Blueprint $table) {
            $table->id();
            $table->dateTime('waktu_assign_surat');
            $table->unsignedBigInteger('id_mitra');
            $table->unsignedBigInteger('id_pstat');
            $table->string('no_surat')->nullable();
            $table->string('no_unik')->nullable();
            $table->string('perihal', 255)->nullable();
            $table->string('notes_surat', 255)->nullable(); 
            $table->dateTime('last_updated')->nullable();
            $table->string('added_by', 5);
            $table->string('modified_by', 3)->nullable();
            $table->string('file_surat')->nullable();
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
        Schema::dropIfExists('suratpjas');
    }
}

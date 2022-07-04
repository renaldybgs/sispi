<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->id();
            $table->dateTime('waktu_assign_project');
            $table->unsignedBigInteger('id_pketerangan')->nullable();
            $table->unsignedBigInteger('id_pstat');
            $table->unsignedBigInteger('id_product');
            $table->unsignedBigInteger('id_mitra');
            $table->string('number_special', 51)->nullable();
            $table->string('nama_prod', 256)->nullable();
            $table->string('typereg_numb', 51)->nullable();
            $table->string('security_lab', 51)->nullable();
            $table->string('lab', 51)->nullable();
            $table->dateTime('pif')->nullable();
            $table->dateTime('ctf')->nullable();
            $table->dateTime('report_lab')->nullable();
            $table->dateTime('complience_req')->nullable();
            $table->dateTime('loa_new')->nullable();
            $table->dateTime('loa_sent')->nullable();
            $table->unsignedBigInteger('stats_temp')->nullable();    
            $table->string('pketerangan_status')->nullable();
            $table->string('notes_project', 301)->nullable(); 
            $table->string('identification_num', 51)->nullable();
            $table->string('certification_no', 51)->nullable();
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
        Schema::dropIfExists('projects');
    }
}

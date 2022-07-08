<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIpkcsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ipkcs', function (Blueprint $table) {
            $table->id();
            $table->dateTime('waktu_assign_project');
            $table->unsignedBigInteger('id_pstat');
            $table->unsignedBigInteger('id_ca');
            $table->string('bin', 50)->nullable();
            $table->string('jenis_ipkc', 20)->nullable();
            $table->string('no_ipkc', 100)->nullable();
            $table->unsignedBigInteger('stats_temp')->nullable();    
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
        Schema::dropIfExists('ipkcs');
    }
}

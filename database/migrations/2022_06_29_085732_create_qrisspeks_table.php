<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQrisspeksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('qrisspeks', function (Blueprint $table) {
            $table->id();
            $table->dateTime('waktu_assign_project')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->unsignedBigInteger('id_pketerangan')->nullable();
            $table->unsignedBigInteger('id_pstat');
            $table->unsignedBigInteger('id_product');
            $table->unsignedBigInteger('id_mitra');
            $table->string('no_formulir', 51)->nullable();
            $table->string('no_spek', 301)->nullable();
            $table->dateTime('spek_qris')->nullable();
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
        Schema::dropIfExists('qrisspeks');
    }
}

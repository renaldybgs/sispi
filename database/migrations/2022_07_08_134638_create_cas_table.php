<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cas', function (Blueprint $table) {
            $table->id();
            $table->dateTime('waktu_assign_project');
            $table->string('status', 20);
            $table->string('nama_issuer', 255);
            $table->string('bin', 255)->nullable();
            $table->string('reg_ca', 50)->nullable();
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
        Schema::dropIfExists('cas');
    }
}

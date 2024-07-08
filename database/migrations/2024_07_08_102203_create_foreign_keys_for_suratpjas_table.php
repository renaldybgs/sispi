<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForeignKeysForSuratpjasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('suratpjas', function (Blueprint $table) {
            $table->foreign('id_mitra')->references('id')->on('mitras');
            $table->foreign('id_pstat')->references('id')->on('projects_stats');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        $table->dropForeign('projects_id_mitra_foreign');
        $table->dropForeign('projects_id_PStatus_foreign');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForeignKeysForProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->foreign('id_pketerangan')->references('id')->on('projects_keterangans');
            $table->foreign('id_pstat')->references('id')->on('projects_stats');
            $table->foreign('id_product')->references('id')->on('products');
            $table->foreign('id_mitra')->references('id')->on('mitras');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->dropForeign('projects_id_PKeterangan_foreign');
            $table->dropForeign('projects_id_PStatus_foreign');
            $table->dropForeign('projects_id_produk_foreign');
            $table->dropForeign('projects_id_mitra_foreign');
        });
    }
}

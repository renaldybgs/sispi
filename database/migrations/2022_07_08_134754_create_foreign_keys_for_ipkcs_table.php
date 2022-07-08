<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateForeignKeysForIpkcsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('ipkcs', function (Blueprint $table) { 
            $table->foreign('id_ca')->references('id')->on('cas');
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
            $table->dropForeign('ipkcs_id_ca_foreign');
            $table->dropForeign('ipkcs_id_PStatus_foreign');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('jadwal_harian', function (Blueprint $table) {
            $table->foreign(['id_jadwal_umum'], 'jadwal_harian_ibfk_1')->references(['id_jadwal_umum'])->on('jadwal_umum');
        });
    }

    /**
 * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('jadwal_harian', function (Blueprint $table) {
            $table->dropForeign('jadwal_harian_ibfk_1');
        });
    }
};

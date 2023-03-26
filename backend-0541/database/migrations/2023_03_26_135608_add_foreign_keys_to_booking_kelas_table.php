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
        Schema::table('booking_kelas', function (Blueprint $table) {
            $table->foreign(['no_struk'], 'booking_kelas_ibfk_1')->references(['no_struk_transaksi'])->on('transaksi_member');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('booking_kelas', function (Blueprint $table) {
            $table->dropForeign('booking_kelas_ibfk_1');
        });
    }
};

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWorkDaysTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('WorkDays', function (Blueprint $table) {
           $table->increments('id');
           //$table->foreign('StaffID')->references('id')->on('Staff');
           $table->bigInteger('StaffID')->unsigned();
           $table->date('Date');
           $table->string('Time');
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
       Schema::dropIfExists('WorkDays');
    }
}

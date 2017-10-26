<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStaffTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Staff', function (Blueprint $table) {
           $table->increments('id');
           //$table->foreign('DeptID')->references('id')->on('Department');
           $table->bigInteger('DeptID')->unsigned();
           //$table->foreign('OfficeID')->references('id')->on('Office');
           $table->bigInteger('OfficeID')->unsigned();
           $table->string('FirstName',40);
           $table->string('LastName',40);
           $table->date('DOB');
           $table->boolean('IsWorking')->default(true);
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
        Schema::dropIfExists('Staff');
    }
}

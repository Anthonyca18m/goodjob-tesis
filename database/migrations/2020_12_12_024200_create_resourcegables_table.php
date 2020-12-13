<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResourcegablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resourcegables', function (Blueprint $table) {
            $table->id();

            $table->text('resource');
            $table->text('op1')->nullable();
            $table->text('op2')->nullable();
            $table->text('op3')->nullable();
            $table->text('op4')->nullable();
            $table->text('op5')->nullable();
            $table->morphs('resourcegable');

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
        Schema::dropIfExists('resourcegables');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activities', function (Blueprint $table) {
            $table->id();

            $table->text('title');
            $table->longText('description');
            $table->date('date_init');
            $table->date('date_end');
            $table->integer('person_required');

            $table->string('address');
            $table->string('address_reference')->nullable();
            $table->string('ubigeo');
            $table->string('country');
            $table->integer('status');

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
        Schema::dropIfExists('activities');
    }
}

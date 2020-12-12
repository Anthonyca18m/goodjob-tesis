<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProfilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('bussiness_name')->nullable();
            $table->string('trade_name')->nullable();
            $table->string('birth_date')->nullable();
            $table->string('gener')->nullable();
            $table->string('document')->nullable();
            $table->string('ruc')->nullable();
            $table->string('type_document_id')->nullable();
            $table->string('phone')->nullable();

            $table->string('address')->nullable();
            $table->string('address_reference')->nullable();
            $table->string('ubigeo')->nullable();
            $table->string('country')->nullable();
            $table->string('email_opt')->nullable();
            $table->text('facebook')->nullable();
            $table->text('twitter')->nullable();
            $table->text('github')->nullable();
            $table->text('linkedin')->nullable();

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
        Schema::dropIfExists('profiles');
    }
}

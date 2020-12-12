<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddRelationUsersIdTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function(Blueprint $table) {

            $table->bigInteger('account_type_id')->unsigned()->nullable()->after('id');
            $table->foreign('account_type_id')->references('id')->on('account_types')->onDelete('set null')->onUpdate('cascade');
        });

        Schema::table('profiles', function(Blueprint $table) {

            $table->bigInteger('user_id')->unsigned()->nullable()->after('id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('account_banks', function(Blueprint $table) {

            $table->bigInteger('user_id')->unsigned()->nullable()->after('id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');

            $table->bigInteger('bank_id')->unsigned()->nullable()->after('id');
            $table->foreign('bank_id')->references('id')->on('banks')->onDelete('set null')->onUpdate('cascade');
        });

        Schema::table('activities', function(Blueprint $table) {

            $table->bigInteger('user_id')->unsigned()->nullable()->after('id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('postulations', function(Blueprint $table) {

            $table->bigInteger('activity_id')->unsigned()->nullable()->after('id');
            $table->foreign('activity_id')->references('id')->on('activities')->onDelete('cascade')->onUpdate('cascade');

            $table->bigInteger('user_id')->unsigned()->nullable()->after('activity_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade')->onUpdate('cascade');
        });

        Schema::table('rewards', function(Blueprint $table) {

            $table->bigInteger('type_reward_id')->unsigned()->nullable()->after('id');
            $table->foreign('type_reward_id')->references('id')->on('type_rewards')->onDelete('set null')->onUpdate('cascade');
        });
        Schema::table('resourcegables', function(Blueprint $table) {

            $table->bigInteger('type_resource_id')->unsigned()->nullable()->after('id');
            $table->foreign('type_resource_id')->references('id')->on('type_resources')->onDelete('set null')->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('add_relation_users_id');
    }
}

<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TypeRewardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [ 'name' => 'Remuneración Económica', 'status' => 1 ],
        ];

        DB::table('type_rewards')->insert($data);
    }
}

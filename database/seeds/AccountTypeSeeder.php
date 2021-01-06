<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AccountTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [ 'name' => 'Usuario C' ],
            [ 'name' => 'Empresa' ],
        ];

        DB::table('account_types')->insert($data);
    }
}

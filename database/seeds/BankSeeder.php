<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BankSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [ 'name' => 'Banco de Comercio', 'status' => 1 ],
            [ 'name' => 'Banco de Crédito del Perú', 'status' => 1 ],
            [ 'name' => 'Banco Interamericano de Finanzas (BanBif)', 'status' => 1 ],
            [ 'name' => 'Banco Pichincha', 'status' => 1 ],
            [ 'name' => 'BBVA', 'status' => 1 ],
            [ 'name' => 'Citibank Perú', 'status' => 1 ],
            [ 'name' => 'Interbank', 'status' => 1 ],
            [ 'name' => 'MiBanco', 'status' => 1 ],
            [ 'name' => 'Scotiabank Perú', 'status' => 1 ],
            [ 'name' => 'Banco GNB Perú', 'status' => 1 ],
            [ 'name' => 'Banco Falabella', 'status' => 1 ],
            [ 'name' => 'Banco Ripley', 'status' => 1 ],
            [ 'name' => 'Banco Santander Perú', 'status' => 1 ],
            [ 'name' => 'Banco Azteca', 'status' => 1 ],
            [ 'name' => 'CRAC CAT Perú', 'status' => 1 ],
            [ 'name' => 'ICBC PERU BANK', 'status' => 1 ],
        ];

        DB::table('banks')->insert($data);
    }
}

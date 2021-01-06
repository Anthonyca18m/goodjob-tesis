<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ResourceTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [ 'name' => 'Perfil' ],
            [ 'name' => 'Imagen Principal de Actividad' ],
        ];

        DB::table('type_resources')->insert($data);
    }
}

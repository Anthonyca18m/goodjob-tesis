<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [ 'id'=> '01', 'name' => 'Amazonas' ],
            [ 'id'=> '02', 'name' => 'Áncash' ],
            [ 'id'=> '03', 'name' => 'Apurímac' ],
            [ 'id'=> '04', 'name' => 'Arequipa' ],
            [ 'id'=> '05', 'name' => 'Ayacucho' ],
            [ 'id'=> '06', 'name' => 'Cajamarca' ],
            [ 'id'=> '07', 'name' => 'Callao' ],
            [ 'id'=> '08', 'name' => 'Cusco' ],
            [ 'id'=> '09', 'name' => 'Huancavelica' ],
            [ 'id'=> '10', 'name' => 'Huánuco' ],
            [ 'id'=> '11', 'name' => 'Ica' ],
            [ 'id'=> '12', 'name' => 'Junín' ],
            [ 'id'=> '13', 'name' => 'La Libertad' ],
            [ 'id'=> '14', 'name' => 'Lambayeque' ],
            [ 'id'=> '15', 'name' => 'Lima' ],
            [ 'id'=> '16', 'name' => 'Loreto' ],
            [ 'id'=> '17', 'name' => 'Madre de Dios' ],
            [ 'id'=> '18', 'name' => 'Moquegua' ],
            [ 'id'=> '19', 'name' => 'Pasco' ],
            [ 'id'=> '20', 'name' => 'Piura' ],
            [ 'id'=> '21', 'name' => 'Puno' ],
            [ 'id'=> '22', 'name' => 'San Martín' ],
            [ 'id'=> '23', 'name' => 'Tacna' ],
            [ 'id'=> '24', 'name' => 'Tumbes' ],
            [ 'id'=> '25', 'name' => 'Ucayali', ]

        ];

        DB::table('departments')->insert($data);
    }
}

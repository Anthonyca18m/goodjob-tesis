<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run()
    {
        $client = User::create([
            'account_type_id' => 1,
            'email' => 'user@goodjoblatam.com',
            'password' => Hash::make('password'),
            'register' => 'web',
            'status' => 1 // 1:activo 0: inactivo 3: en espera
        ]);
        $client->profile()->create([
            'user_id' => $client->id,
            'name' => 'usuario goodjob',
            'bussiness_name' => '',
            'trade_name' => '',
            'document' => '63571819',
            'ruc' => '',
            'type_document_id' => '1',
            'country' => 'PE',
        ]);
        $client->image()->create([
            'type_resource_id' => 1, // 1 => Perfil de Cliente
            'resource' => config('app.default_profile')
        ]);




        $client = User::create([
            'account_type_id' => 2,
            'email' => 'company@goodjoblatam.com',
            'password' => Hash::make('password'),
            'register' => 'web',
            'status' => 1 // 1:activo 0: inactivo 3: en espera
        ]);
        $client->profile()->create([
            'user_id' => $client->id,
            'name' => '',
            'bussiness_name' => 'goodjob',
            'trade_name' => 'goodjob S.A.C',
            'document' => '',
            'ruc' => '20999999999',
            'type_document_id' => 2,
            'country' => 'PE',
        ]);
        $client->image()->create([
            'type_resource_id' => 1, // 1 => Perfil de Cliente
            'resource' => config('app.default_profile')
        ]);
    }
}

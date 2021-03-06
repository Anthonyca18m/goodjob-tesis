<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            DepartmentSeeder::class,
            ProvinceSeeder::class,
            DistrictSeeder::class,
            AccountTypeSeeder::class,
            ResourceTypeSeeder::class,
            UserSeeder::class,
            TypeRewardSeeder::class,
            ActivitySeeder::class,
            BankSeeder::class,
        ]);
    }
}

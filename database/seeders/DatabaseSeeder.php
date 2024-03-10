<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\City;
use App\Models\ShoeSize;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            BrandSeeder::class,
            GenderSeeder::class,
            CategorySeeder::class,
            CitySeeder::class,
            LinkSeeder::class,
            RoleSeeder::class,
            SaleSeeder::class,
            ShoeSeeder::class,
            ShoeSizeSeeder::class,

        ]);

    }
}

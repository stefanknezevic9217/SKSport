<?php

namespace Database\Seeders;

use App\Models\City;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $cities=['Beograd',"Novi Sad","Niš","Subotica","Kraljevo"];
    public function run(): void
    {
        foreach ($this->cities as $city){
            $val=City::create(["name"=>$city]);

        }
    }
}

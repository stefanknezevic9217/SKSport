<?php

namespace Database\Seeders;

use App\Models\Gender;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GenderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $genders=['Male',"Female","Unisex"];
    public function run(): void
    {
        foreach ($this->genders as $gender){
            $val=Gender::create(["name"=>$gender]);

        }
    }
}

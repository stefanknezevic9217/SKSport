<?php

namespace Database\Seeders;

use App\Models\Brand;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $brands=['Puma',"Adidas","Nike","Converse","Reebok"];
    public function run(): void
    {
        foreach ($this->brands as $brand){
            $val=Brand::create(["name"=>$brand]);

        }

    }
}

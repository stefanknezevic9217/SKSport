<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Sale;

class SaleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $sales=[0,10,20,30,40,50];
    public function run(): void
    {
        foreach ($this->sales as $sale){
            $val=Sale::create(["value"=>$sale]);

        }
    }
}

<?php

namespace Database\Seeders;

use App\Models\ShoeSize;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ShoeSizeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        for($i=1;$i<25;$i++){
            for($j=37;$j<46;$j++){
                $val=ShoeSize::create([
                    "shoe_id"=>$i,
                    "size"=>$j,
                    "quantity"=>rand(0,100)
                ]);
            }
        }



    }
}

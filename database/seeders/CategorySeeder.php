<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $categories=['Dizajn',"Skejt","Setnja","Trcanje","Sportske"];
    public function run(): void
    {
        foreach ($this->categories as $cat){
            $val=Category::create(["name"=>$cat]);

        }
    }
}

<?php

namespace Database\Seeders;

use App\Models\Link;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;



class LinkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $routes=["home","shoes","about","contact","doc","author","sitemap"];
    private array $names=["Početna","Proizvodi","O nama","Kontakt","Dokumentacija","O autoru","Site map",];
    private array $footer=[0,0,0,0,1,1,1];

    public function run(): void
    {
        foreach ($this->routes as $r=>$route){
            $val=Link::create(["name"=>$this->names[$r],"route"=>$route,"footer"=>$this->footer[$r]]);

        }
    }
}

<?php

namespace Database\Seeders;

use App\Models\Shoe;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ShoeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    private array $names=[
        "Air Jordan 1",
        "Yeezy Boost 350",
        "Nike Air Max 97",
        "Adidas Stan Smith",
        "Converse Chuck Taylor All-Star",
        "Puma Suede Classic",
        "Reebok Club C 85",
        "Vans Old Skool",
        "New Balance 990",
        "Asics Gel-Lyte III",
        "Saucony Jazz Original",
        "Under Armour Curry 7",
        "Nike SB Dunk",
        "Adidas Superstar",
        "Air Jordan 4",
        "Nike Air Force 1",
        "Adidas NMD R1",
        "Nike Cortez",
        "Vans Sk8-Hi",
        "Balenciaga Triple S",
        "Gucci Ace Sneaker",
        "Fila Disruptor 2",
        "Nike React Element 55",
        "Adidas Ultraboost"
    ];
    public function run(): void
    {
        foreach ($this->names as $n=>$name){
            $val=Shoe::create([
                "name"=>$name,
                "price"=>rand(2000,20000),
                "brand_id"=>rand(1,5),
                "gender_id"=>rand(1,3),
                "sale_id"=>rand(1,6),
                "image"=>($n+1),
                "recommended"=>false
            ]);
            for($i=0;$i<rand(1,3);$i++){
                Shoe::find($val->id)->categories()->syncWithoutDetaching([rand(1,5)]);
            }

        }
        $men=Shoe::select("id")->where("gender_id","=",1)->take(4)->get();
        $women=Shoe::select("id")->where("gender_id","=",2)->take(4)->get();
        Shoe::whereIn("id",$men)->update(["recommended"=>true]);
        Shoe::whereIn("id",$women)->update(["recommended"=>true]);



    }
}

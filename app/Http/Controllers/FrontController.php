<?php

namespace App\Http\Controllers;

use App\Models\City;
use Illuminate\Http\Request;
use App\Models\Shoe;

class FrontController extends BasicController

{
    public function index()
    {
        $shoesRecommended=Shoe::where("recommended",true)->where("delete",false)->take(4)->get();
        return view("pages.main.home",["shoes"=>$shoesRecommended]);
    }


    public function contact()
    {
        return view("pages.main.contact");
    }
    public function about()
    {
        return view("pages.main.about");
    }
    public function registration()
    {
        $cites=City::all();
        return view("pages.main.registration",["cities"=>$cites]);
    }
    public function error()
    {
        return view("pages.main.error");
    }
    public function doc()
    {
        return redirect(asset("assets/doc.pdf"));
    }
    public function author()
    {
        return view("pages.main.author");
    }
    public function sitemap()
    {
        return redirect(asset("assets/doc.pdf"));
    }



}

<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Sale;
use App\Models\Gender;
use App\Models\Shoe;
use Illuminate\Http\Request;


class ShoeController extends BasicController
{
    public function index()
    {
        $this->data["Kategorije"]=Category::all();
        $popusti=Sale::all();
        $this->data["Pol"]=Gender::all();
        $this->data["Brend"]=Brand::all();
        $shoesList=Shoe::with("brand")->with("sale")->get();

        return view("pages.shoes.shoes",["data"=>$this->data,"shoesList"=>$shoesList,"popusti"=>$popusti]);
    }
    public function show($id)
    {
        $shoe=Shoe::find($id);
        return view("pages.shoes.show",["shoe"=>$shoe]);
    }
    public function filter(Request $request){
        try{
            $query=Shoe::with("brand")->with("sale")->with("categories")->with("size")
            ->join("sales","sales.saleId","=","shoes.sale_id");
            if($request->Brend){
                $query=$query->whereIn("brand_id",$request->Brend);
            }
            if($request->Kategorije){
                $query=$query->whereHas("categories",function($cat) use ($request) {
                    $cat->whereIn("category_id",$request->Kategorije);
                });
            }
            if($request->Pol){
                $query=$query->whereIn("gender_id",$request->Pol);
            }
            if($request->Popusti){
                $query=$query->whereIn("sale_id",$request->Popusti);
            }
            if($request->min){
                $query=$query->whereRaw("(price*(1-(sales.value/100)))>$request->min");
            }
            if($request->max){
                $query=$query->whereRaw("(price*(1-(sales.value/100)))<$request->max");
            }
            if($request->pretraga){
                $query=$query->where("name","like", "%". $request->pretraga ."%")
                    ->orWhereHas("brand",function($b) use ($request) {
                        $b->where("name","like", "%". $request->pretraga ."%");

                });
            }
            if($request->sort){
                $sortArray=explode("-",$request->sort);
                if($sortArray[0]=="name"){
                    $query=$query->orderBy("shoes.".$sortArray[0],$sortArray[1]);
                }
                if($sortArray[0]=="price"){
                    if($sortArray[1]=="asc"){
                        $query=$query->orderByRaw("price*(1-(sales.value/100)) asc");
                    }else{
                        $query=$query->orderByRaw("price*(1-(sales.value/100)) desc");
                    }
                }

            }
            if($request->Velicine){
                $query=$query->whereHas("size",function($s) use ($request) {
                    $s->whereIn("size",$request->Velicine)->where("quantity",">",0);
                });
            }



            $query=$query->where("delete",false);
            $shoes=$query->paginate(9);
            //$shoes=$query->get();






            return response()->json([$shoes]);
        }catch (\Exception $e){
            return response()->json([$e]);
        }


    }
}

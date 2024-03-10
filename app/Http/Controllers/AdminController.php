<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Gender;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Sale;
use App\Models\Shoe;
use Illuminate\Http\Request;
use App\Models\User;

class AdminController extends Controller
{
    public function order(){

        $orders=Order::all();
        $priceResult=[];

        foreach ($orders as $order){
            $tmp=0;
            foreach ($order->orderItem as $item){
                $tmp+=$item->price*$item->quantity;
            }
            array_push($priceResult,$tmp);
        }

        return view("pages.admin.order",["orders"=>$orders,"prices"=>$priceResult]);
    }
    public function shoes(){
        $shoes=Shoe::all();
        return response()->json([$shoes]);

    }
    public function index(){
        $brands=Brand::all();
        $sales=Sale::all();
        $categories=Category::all();
        $genders=Gender::all();

        return view("pages.admin.shoesAdmin",["brands"=>$brands,"sales"=>$sales,"categories"=>$categories,"genders"=>$genders]);
    }
    public function delete(Request $request)
    {
        try{
            $id=$request->id;
            return Shoe::where("id",$id)->update([
                "delete"=>true
            ]);
        }catch (\Exception $e){
            return response()->json([],500);
        }

    }

}

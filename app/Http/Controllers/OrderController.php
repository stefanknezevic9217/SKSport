<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\OrderItem;
use Carbon\Carbon;

class OrderController extends Controller
{
    public function add(Request $request)
    {
        try{
            \DB::beginTransaction();
            $user_id=Auth::user()->id;
            $cart=Cart::where("user_id",$user_id)->first();
            $items=CartItem::where("cart_id", $cart->id)->with("shoesize")->get();

            $order_id=Order::insertGetId(["user_id"=>$user_id,"created_at"=>Carbon::now()]);

            foreach ($items as $item){

                $priceRaw=$item->shoesize->shoe->price;

                $sale=$item->shoesize->shoe->sale->value;

                $price=ceil($priceRaw*(1-($sale/100)));
                OrderItem::create([
                    "shoe_size_quantity_id"=>$item->shoe_size_id,
                    "quantity"=>$item->quantity,
                    "order_id"=>$order_id,
                    "price"=>$price
                ]);


            }
            CartItem::where("cart_id",$cart->id)->delete();
            \DB::commit();
            return redirect()->back()->with('success', 'Uspesno ste narucili');
        }catch(\Exception $e){

            return redirect()->back()->with('error', 'Doslo je do greske');

        }


    }
}

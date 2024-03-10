<?php

namespace App\Http\Controllers;

use App\Models\CartItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Cart;
use App\Models\ShoeSize;

class CartController extends Controller
{
    public function index()
    {

        $user_id=Auth::user()->id;

        $isThere=Cart::where("user_id",$user_id)->first();
        $cart=[];

        if($isThere) {
            $cart = CartItem::where("cart_id", $isThere->id)->with("shoesize")->get();

            if ($cart->isEmpty()) {
                $cart = [];
            }
        }



        return view("pages.main.cart",["cart"=>$cart]);

    }
    public function add(Request $request)
    {
        $size=$request->size;

        if($size){

            $user_id=Auth::user()->id;
            $cart=Cart::where("user_id",$user_id)->first();

            $exists=CartItem::where("cart_id", $cart->id)->where("shoe_size_id",$size)->first();

            if($exists){
                $quantity=$exists->quantity+1;

                CartItem::where("cart_id", $cart->id)->where("shoe_size_id",$size)->update(["quantity"=>$quantity]);
                return redirect()->back()->with('success', 'Povecana kolicina u korpi');
            }else{
                CartItem::create([
                    "shoe_size_id"=>$size,
                    "quantity"=>1,
                    "cart_id"=>$cart->id
                ]);
                return redirect()->back()->with('success', 'Uspesno dodato u korpu');
            }
        }else{
            return redirect()->back()->with('error', 'Niste izabrali velicinu');
        }


    }
    public function priceResult(){
        $user_id=Auth::user()->id;
        $cart=Cart::where("user_id",$user_id)->first();
        $items=CartItem::where("cart_id", $cart->id)->with("shoesize")->get();
        $price=0;
        foreach ($items as $item){
            $price=$price+ceil($item->shoesize->shoe->price*(1-($item->shoesize->shoe->sale->value/100)))*$item->quantity;

        }
        return response()->json([number_format($price,0,".",".")]);

    }
    public function updateQuantity(Request $request)
    {
        try{
            $shoeSize=$request->shoeSize;
            $quantity=$request->quantity;
            $user_id=Auth::user()->id;
            $cart=Cart::where("user_id",$user_id)->first();
            return $result=CartItem::where("cart_id", $cart->id)->where("shoe_size_id",$shoeSize)->update([
                "quantity"=>$quantity
            ]);
        }catch(\Exception $e){
            return response()->json([$e]);
        }


    }
}

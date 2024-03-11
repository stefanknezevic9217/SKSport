<?php

namespace App\Http\Controllers;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\RegistrationRequest;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\Cart;

class UserController extends BasicController
{
        public function store(RegistrationRequest $request){
            try{

                $user=User::create([
                    "name"=>$request->ime,
                    "last_name"=>$request->prezime,
                    "email"=>$request->email,
                    "password"=>md5($request->password),
                    "city_id"=>$request->grad,
                    "address"=>$request->adresa,
                    "gender_id"=>$request->pol,
                    "role_id"=>2
                ]);
                Cart::create(["user_id"=>$user->id]);
                return response()->json([],200);

            }catch(\Exception $e){
                return response()->json(["Doslo je do greske"], 500);
            }

        }
        public function login(LoginRequest $request){
            try{
                $user = User::where('email', $request->email)->first();
                if(!$user){
                    return response()->json(["Ne postoji user"], 401);
                }
                if(!($user->password==md5($request->password))){
                    return response()->json(["Password nije ispravan"], 401);
                }
                Auth::login($user);

                return response()->json([],200);
            }catch (\Exception $e){
                return response()->json(['Doslo je do greske'], 500);
            }

        }

        public function logout(){
            Auth::logout();
            return redirect()->route("home");
        }

}

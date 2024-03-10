<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShoeSize extends Model
{
    use HasFactory;
    protected $table = 'shoe_size_quantity';

    public function shoe()
    {
        return $this->belongsTo(Shoe::class);
    }
    public function orders()
    {
        return $this->belongsToMany(Order::class,"order_items");
    }
    public function cartItem()
    {
        return $this->hasMany(CartItem::class);
    }
    public function orderItem()
    {
        return $this->hasMany(Order::class);
    }
}

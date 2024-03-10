<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

/**
 *
 *
 * @mixin Builder
 * @property int $id
 * @property int $shoe_size_id
 * @property int $quantity
 * @property int $cart_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Cart $cart
 * @property-read \App\Models\ShoeSize $shoesize
 * @method static Builder|CartItem newModelQuery()
 * @method static Builder|CartItem newQuery()
 * @method static Builder|CartItem query()
 * @method static Builder|CartItem whereCartId($value)
 * @method static Builder|CartItem whereCreatedAt($value)
 * @method static Builder|CartItem whereId($value)
 * @method static Builder|CartItem whereQuantity($value)
 * @method static Builder|CartItem whereShoeSizeId($value)
 * @method static Builder|CartItem whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class CartItem extends Model
{
    use HasFactory;
    protected $table = 'cart_items';
    protected $fillable = ["shoe_size_id", "quantity", "cart_id"];

    public function cart()
    {
        return $this->belongsTo(Cart::class);
    }
    public function shoesize()
    {
        return $this->belongsTo(ShoeSize::class,"shoe_size_id");
    }

}

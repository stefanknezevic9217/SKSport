<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shoe extends Model
{
    use HasFactory;

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }
    public function sale()
    {
        return $this->BelongsTo(Sale::class,"sale_id");
    }
    public function gender()
    {
        return $this->BelongsTo(Gender::class);
    }
    public function size()
    {
        return $this->hasMany(ShoeSize::class);
    }
    public function categories()
    {
        return $this->BelongsToMany(Category::class)->withTimestamps();
    }
}

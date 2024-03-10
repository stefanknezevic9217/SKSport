<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{
    use HasFactory;
    protected $primaryKey = 'saleId';

    public function shoe()
    {
        return $this->HasMany(Shoe::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

/**
 * @mixin Builder
 */

class Brand extends Model
{
    use HasFactory;

    protected $table = 'brands';
    public function shoe()
    {
        return $this->HasMany(Shoe::class);
    }
}

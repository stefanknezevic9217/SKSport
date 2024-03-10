<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class Shoe extends Component
{
    public int $id;
    public string $img;
    public string $brand;

    public string $name;
    public float $price;
    public $sale;

    /**
     * Create a new component instance.
     */
    public function __construct($id,$img,$brand,$name,$price,$sale)
    {
        $this->id=$id;
        $this->img=$img;
        $this->brand=$brand;
        $this->name=$name;
        $this->price=$price;
        $this->sale=$sale;

    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.shoe');
    }
}


@extends('layouts.layout')
@section('title')Patika@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')SKSport je vodeci maloprodajni prodavac sportske obuce.@endsection
@section('content')
    <div id="sadrzaj">
        <div class="okvir between" id="proizvod-1">
            <img alt="{{$shoe->name}}" src="{{asset("assets/img/")."/".$shoe->image}}.png"/>
            <div id="proizvod-info">
                <h2>
                    {{$shoe->brand->name}}<br>
                    {{$shoe->name}}
                </h2>

                <div id="p-info">
                    <span class="between"><p>Sifra:</p><p>{{$shoe->id}}</p></span>
                    <span class="between"><p>Brend:</p><p>{{$shoe->brand->name}}</p></span>
                    <span class="between"><p>Kategorija:</p><p>Patike</p></span>
                    <span class="between"><p>Pol:</p><p>{{$shoe->gender->name}}</p></span>

                    @if($shoe->sale->value)
                        <span class="between"><p><del>{{number_format($shoe->price,0,".",".")}}din.</del></p>
                        <p class="popust">{{$shoe->sale->value}}%</p></span>
                        <p id="p-cena">{{number_format(ceil($shoe->price*(1-($shoe->sale->value/100))),0,".",".")}} din.</p>
                    @else
                        <p id="p-cena">{{number_format($shoe->price,0,".",".")}}din.</p>

                    @endif

                    <p id="velicine-naslov">Velicine:</p>


                </div>
                <div id="velicine" class="between">
                    @foreach($shoe->size as $size)
                        @if($size->quantity>0)
                            <p class="velicina" data-shoe-size-id="{{$size->id}}">{{$size->size}}</p>
                        @endif
                    @endforeach

                </div>
                @if(Auth::check())
                    <form method="post" action="{{route("cart.add")}}">
                        @csrf
                        <input type="hidden" value="" name="size" id="hidden-size"/>
                        <input type="submit" class="dugme" id="add-cart" name="add-cart" value="Dodaj u korpu"/>
                    </form>
                @endif

                @if(session()->has('error'))
                    <div id="greske">
                        {{ session()->get('error') }}
                    </div>
                @endif
                @if(session()->has('success'))
                    <div id="greske">
                        {{ session()->get('success') }}
                    </div>
                @endif


            </div>





        </div>
    </div>
@endsection

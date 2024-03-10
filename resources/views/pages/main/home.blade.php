@extends('layouts.layout')
@section('title')Početna@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')@endsection
@section('content')
    <div id="sadrzaj">
        <div class="okvir">
            <div id="slika-tekst" class="between center">
                <img alt="patike" src="{{asset("assets/img/slika1.png")}}"/>
                <p>
                    Veliki izbor patika prondadjite u nasim prodavnicama ili porucite iz topline vaseg doma.
                    Vreme je za nove patike, vreme je za SKSport.
                </p>

            </div>
            <div id="zasto-wrap" class="between">
                <p>Zasto bas SKSport?</p>
                <div class="prednosti">
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <p>
                        SKSport moze da se pohvali brzom i kvalitetnom ispokrukom.
                        Porucite i iznenadite se.

                    </p>
                </div>
                <div class="prednosti">
                    <i class="fa fa-money" aria-hidden="true"></i>
                    <p>
                        SKSport moze da se pohvali brzom i kvalitetnom ispokrukom.
                        Porucite i iznenadite se.

                    </p>

                </div>
                <div class="prednosti">
                    <i class="fa fa-users" aria-hidden="true"></i>
                    <p>
                        SKSport moze da se pohvali brzom i kvalitetnom ispokrukom.
                        Porucite i iznenadite se.

                    </p>

                </div>

            </div>
            <div id="predlozi" class="between izdvajamo">
                <p>Izdvajamo iz nase ponude</p>
                @foreach($shoes as $s)
                    <x-shoe
                        :id="$s->id"
                        :img="$s->image"
                        :brand="$s->brand->name"
                        :name="$s->name"
                        :price="$s->price"
                        :sale="$s->sale->value"


                    />
                @endforeach

            </div>
        </div>
    </div>
@endsection

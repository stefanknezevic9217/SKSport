@extends('layouts.layout')
@section('title')Korpa@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')SKSport je vodeci maloprodajni prodavac sportske obuce.@endsection
@section('content')
    <div id="sadrzaj">
        <div class="okvir between">

            @if($cart)
                <div id="korpa">
                    <h1>
                        Korpa
                    </h1>
                    <table id="tabela-korpa">
                        <thead>
                        <th>
                            Slika
                        </th>
                        <th>
                            Proizvod
                        </th>
                        <th>
                            Velicina
                        </th>
                        <th>
                            Cena
                        </th>
                        <th>
                            Kol.
                        </th>

                        </thead>
                        <tbody>
                @foreach($cart as $c)


                    <tr>
                        <td>
                            <img alt="{{$c->shoesize->shoe->name}}" src="{{asset("assets/img/")."/".$c->shoesize->shoe->image}}.png"/>
                        </td>
                        <td>

                            {{$c->shoesize->shoe->brand->name."-".$c->shoesize->shoe->name}}

                        </td>
                        <td>
                            {{$c->shoesize->size}}
                        </td>
                        <td class="cena">
                            {{number_format(ceil($c->shoesize->shoe->price*(1-($c->shoesize->shoe->sale->value/100))),0,".",".")}} din.
                        </td>
                        <td>
                            <input type="number" value="{{$c->quantity}}" data-shoe-id="{{$c->shoesize->id}}" class="korpa-kolicina"/>
                        </td>

                    </tr>
                @endforeach




                        </tbody>
                    </table>
                    <p>Ukupno: <span id="cena-ukupno">32.000</span></p>
                    <form action="{{route("order.add")}}" method="post">
                        @csrf
                        <input type="submit" class="dugme" name="dugmeNaruci" value="Naruci"/>
                    </form>
                    <div id="greske">
                        @if(session()->has('error'))

                                {{ session()->get('error') }}

                        @endif
                        @if(session()->has('success'))

                                {{ session()->get('success') }}

                        @endif
                    </div>

                </div>
            @else
                <div id="korpa-prazna" class="center around">
                    <h2>Korpa je prazna</h2>
                </div>
            @endif


        </div>
    </div>
@endsection
@section("js")
    <script type="text/javascript" src="{{asset('assets/js/cart.js')}}"></script>
@endsection

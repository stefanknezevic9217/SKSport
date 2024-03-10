@extends('layouts.layout')
@section('title')Registracija@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')@endsection
@section('content')
<div id="sadrzaj">
    <div class="okvir">
        <form action="#" method="post" class="around" id="formRegistracija">

            <h2>Registracija</h2>
            <div id="forma-registracija" class="between">


                <div id="desno" class="">
                    <div class="polje jos">
                        <label for="ime">Ime:</label>
                        <input type="text" id="ime" placeholder=" Ime" name="ime"/>
                    </div>
                    <div class="polje jos">
                        <label for="prezime">Prezime:</label>
                        <input type="text" id="prezime" placeholder=" Prezime" name="prezime"/>
                    </div>
                    <div class="polje jos">
                        <label for="email">Email:</label>
                        <input type="email" placeholder=" Email" id="email" name="email"/>
                    </div>
                    <div class="polje jos">
                        <label for="sifra">Password:</label>
                        <input type="password" placeholder=" Password" id="sifra" name="sifra"/>
                    </div>
                </div>
                <div id="levo">
                    <div class="polje jos">
                        <label for="ponsifra">Repeat password:</label>
                        <input type="password" placeholder=" Repeat password" id="ponsifra" name="ponsifra"/>
                    </div>
                    <div class="polje jos">
                        <label for="grad">Grad:</label>
                        <select  id="grad" name="grad">
                            <option value="0"> Izaberite...</option>
                            @foreach($cities as $city)
                                <option value="{{$city->id}}"> {{$city->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="polje jos">
                        <label for="adresa">Adresa:</label>
                        <input type="text" id="adresa"  name="Adresa"/>
                    </div>
                    <div class="polje">
                        <label>Pol:</label>
                        <div id="radio">
                            <input type="radio" class="radioPol" name="pol" value="1" id="m"/> <label for="m">Musko</label>
                            <input type="radio" class="radioPol" name="pol" value="2" id="z"/> <label for="z">Zensko</label>
                        </div>
                    </div>
                </div>

            </div>

            <input type="button" name="taster1" class="dugme" id="button1" value="Registruj se"/>

        </form>
        <div id="greske">
            <ul>

            </ul>
            <p></p>
        </div>
    </div>
</div>
@endsection
@section("js")
    <script type="text/javascript" src="{{asset('assets/js/registracija.js')}}"></script>
@endsection

@extends('layouts.layout')
@section('title')Autor@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')SKSport je vodeci maloprodajni prodavac sportske obuce.@endsection
@section('content')
    <div id="sadrzaj">
        <div class="okvir between" id="autor-blok">
            <img src="{{asset("assets/img/Autor.jpg")}}" alt="autor"/>
            <p id="autor-tekst">
            Ja sam Stefan Knežević rođen sam u Beogradu 3. juna 1998
            . godine. Završio sam gimnaziju "Sveti Sava", a trenutno sam
            student Visoke ICT škole. U slobodno vreme volim da igram šah.
            </p>
        </div>
    </div>
    @endsection

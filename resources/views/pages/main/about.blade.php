@extends('layouts.layout')
@section('title')O nama@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')SKSport je vodeci maloprodajni prodavac sportske obuce.@endsection
@section('content')
    <div id="sadrzaj">
        <div class="okvir">
            <div id="onama-slika">
                <img src="{{asset("assets/img/onama.jpg")}}" alt="prodavnica"/>
            </div>
            <div id="onama-tekst">
                <h2>O nama</h2>
                <p>
                    SKSport je vaša destinacija za kvalitetne patike i sportsku obuću. Naša priča počinje strašću prema sportu i udobnoj obući. Kroz godine, razvili smo se u pouzdanu marku koja pruža vrhunski izbor patika za sve prilike. Bez obzira jeste li trkač, ljubitelj planinarenja ili jednostavno želite udobne svakodnevne patike, imamo nešto za vas. Naša obuća izrađena je od najkvalitetnijih materijala, testirana je za udobnost i trajnost, te vam pruža podršku u svim aktivnostima. Pridružite nam se i koračajte prema ciljevima u udobnosti naših patika
                </p>
            </div>

        </div>
    </div>
@endsection

@extends('layouts.layout')
@section('title') Kontakt @endsection
@section('keyword') SKSport, patike, prodavnica @endsection
@section('description') SKSport je vodeci maloprodajni prodavac sportske obuce. @endsection
@section('content')
<div id="sadrzaj">
    <div class="okvir">
        <div id="kontakt-forma">
            <h2>
                Imate problem?</br>
                Kontaktirajte Admina
                <form id="forma-kontakt" name="forma-kontakt" action="" method="">
                    <input type="text" name="zaAdmin" id="zaAdmin" placeholder="Email"/>
                    <textarea name="emailAdmin" id="emailAdmin" placeholder="Vasa poruka..."></textarea>
                    <input type="button" class="dugme" name="dugmePoruka" value="Posalji"/>
                </form>
            </h2>
        </div>
        <div id="prodavnice" class="between">
            <h2>Nase prodavnice</h2>
            <div class="prodavnica">
                <p>Beograd</br>
                    Bulervar Kralja Aleksandra 123</br>
                    +381641288943</p>
            </div>
            <div class="prodavnica">
                <p>Beograd</br>
                    Bulervar Kralja Aleksandra 123</br>
                    +381641288943</p>
            </div>
            <div class="prodavnica">
                <p>Beograd</br>
                    Bulervar Kralja Aleksandra 123</br>
                    +381641288943</p>
            </div>
        </div>
    </div>
</div>
@endsection

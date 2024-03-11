@extends('layouts.layout')
@section('title') Pregled @endsection
@section('keyword')@endsection
@section('description')@endsection
@section('content')
    <div id="sadrzaj">
        <div class="okvir between" id="admin-wrap">
            @include("fixed.adminMeni")
            <div id="admin-pregled">
                <div id="header-wrap" class="between">
                    <h2 >Proizvodi</h2>

                </div>






                <table id="tabela-porudzbine">



                </table>
            </div>




        </div>
    </div>
@endsection
@section("js")
    <script type="text/javascript" src="{{asset('assets/js/admin.js')}}"></script>
@endsection

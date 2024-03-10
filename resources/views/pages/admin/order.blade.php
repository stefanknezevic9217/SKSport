@extends('layouts.layout')
@section('title')Order@endsection
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
                    <tr>
                        <th>
                            Ime i prezime
                        </th>
                        <th>
                            Adresa
                        </th>
                        <th>
                            Vreme
                        </th>
                        <th>
                           Proizovdi
                        </th>
                        <th>
                            Ukupna cena
                        </th>
                    </tr>
                    @foreach($orders as $i=>$order)
                        <tr>
                            <td>
                                {{$order->user->name." ".$order->user->last_name}}
                            </td>
                            <td>
                                {{$order->user->address}}
                            </td>
                            <td>
                                {{$order->created_at}}
                            </td>
                            <td>
                                <ul>
                                    @foreach($order->orderItem as $item)

                                        <li>{{$item->shoesize->shoe->name." x ".$item->quantity}}</li>
                                    @endforeach
                                </ul>

                            </td>
                            <td>
                                {{number_format($prices[$i],0,".",".")}} din.
                            </td>
                        </tr>
                    @endforeach



                </table>
            </div>




        </div>
    </div>
@endsection

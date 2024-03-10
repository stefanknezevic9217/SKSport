@extends('layouts.layout')
@section('title')Patike@endsection
@section('keyword')SKSport, patike, prodavnica@endsection
@section('description')SKSport je vodeci maloprodajni prodavac sportske obuce.@endsection
@section('content')
    <div id="sadrzaj">
        <div id="side-proizvodi" class="okvir between">
            <div id="side">
                <div class="filter">

                        @foreach($data as $name=>$item)
                        <div class="filter-naziv">
                            <p>
                                <i class="fa fa-caret-down" aria-hidden="true"></i>
                                {{$name}}
                            </p>
                            <ul>
                                @foreach($item as $checkbox)
                                    <li>

                                        <input type="checkbox" class="filter-check-{{$name}}"  name="{{$name."[]"}}" id="check-{{$name."-".$checkbox->id}}" value="{{$checkbox->id}}"/>
                                        <label for="check-{{$name."-".$checkbox->id}}">{{$checkbox->name}}</label>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        @endforeach
                        <div class="filter-naziv">
                                <p>
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    Popusti
                                </p>
                                <ul>
                                    @foreach($popusti as $p)
                                        <li>
                                            <input type="checkbox" class="filter-check-Popusti"  name="popusti[]" id="check-popusti-{{$p->saleId}}" value="{{$p->saleId}}"/>
                                            <label for="check-popusti-{{$p->saleId}}">{{$p->value}}%</label>
                                        </li>
                                    @endforeach
                                </ul>
                        </div>
                        <div class="filter-naziv">
                            <p>
                                <i class="fa fa-caret-down" aria-hidden="true"></i>
                                Veličina
                            </p>
                            <ul>
                                @for ($i = 35; $i < 46; $i++)
                                    <li>
                                        <input type="checkbox" class="filter-check-Velicine"  name="velicina[]" id="check-velicina-{{$i}}" value="{{$i}}"/>
                                        <label for="check-velicina-{{$i}}">{{$i}}</label>
                                    </li>
                                @endfor
                            </ul>
                        </div>
                            <div class="filter-naziv">
                                <p>
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    Sortiranje
                                </p>
                                <select name="sortiranje-shoe" id="sortiranje-shoe">
                                    <option value="0">Izaberi...</option>
                                    <option value="name-asc">Po nazivu navise</option>
                                    <option value="name-desc">Po nazivu nanize</option>
                                    <option value="price-asc">Po ceni navise</option>
                                    <option value="price-desc">Po ceni nanize</option>
                                </select>
                            </div>
                            <div class="filter-naziv">
                                <p>
                                    <i class="fa fa-caret-down" aria-hidden="true"></i>
                                    Cena
                                </p>
                                <div id="cene" class="between">
                                    <input type="number" name="filter-min" id="filter-min" placeholder="Min"/>
                                    <input type="number" name="filter-max" id="filter-max" placeholder="Max"/>
                                </div>
                            </div>

                        <input type="text" name="filter-pretraga" id="filter-pretraga" placeholder="Pretraga..."/>
                        <input type="button" value="Primni" name="dugmeFilter" class="dugme" id="primeni-filter"/>
                </div>

            </div>
            <div id="proizvodi">
                <h1>
                    Proizvodi
                </h1>
                <div id="pregled" class="izdvajamo">


                </div>
                <div id="paginacija"><ul class="around"></ul></div>
            </div>
        </div>
    </div>
@endsection
@section("js")
    <script type="text/javascript" src="{{asset('assets/js/shoes.js')}}"></script>
@endsection

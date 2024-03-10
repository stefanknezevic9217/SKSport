<div class="prepruke around">
    <img alt="{{$name}}" src="{{asset("assets/img/")."/".$img}}.png">
    <p class="brend-naziv">{{$brand}}</p>
    <p class="naziv-patike">

        {{$name}}
    </p>

    @if($sale)
        <p><del>{{number_format($price,0,".",".")}}din.</del></p>
        <p>{{number_format(ceil($price*(1-($sale/100))),0,".",".")}} din.</p>
        <div class="popust-wrap"><p class="popust popust-centar">{{$sale}}%</p></div>
    @else
        <p>{{number_format($price,0,".",".")}} din.</p>
    @endif
    <a href="{{route("shoe",["id"=>$id])}}">Detaljnije</a>

</div>

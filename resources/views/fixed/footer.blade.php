<div id="footer">
    <div class="okvir">
        <div id="footer-wrap" class="between">
            <div class="around proba">
                <h2>SKSport</h2>
                <ul>
                    <li>
                        <i class="fa fa-home" aria-hidden="true"></i>
                        Pera Perica 5
                    </li>
                    <li>
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        pera@peric.vcom
                    </li>
                    <li>
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        0652354354
                    </li>
                </ul>
            </div>
            <div class="around proba">
                <ul>
                    @foreach($links as $link)
                        @if(!$link->footer)
                            <li><a href="{{route($link->route)}}">{{$link->name}}</a></li>
                        @endif
                    @endforeach
                </ul>
            </div>
            <div class="around proba">
                <ul>
                    @foreach($links as $link)
                        @if($link->footer)
                            <li><a href="{{route($link->route)}}">{{$link->name}}</a></li>
                        @endif
                    @endforeach
                    <li class="ikonice">
                        <i class="fa fa-facebook" aria-hidden="true"></i>
                        <i class="fa fa-instagram" aria-hidden="true"></i>
                        <i class="fa fa-twitter" aria-hidden="true"></i>
                    </li>
                </ul>
            </div>
        </div>
        <div id="linija" class="around center">
            <p>Design by &copy; SKSport</p>
        </div>

    </div>
</div>

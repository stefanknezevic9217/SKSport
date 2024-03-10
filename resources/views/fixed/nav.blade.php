<nav class="center">
    <div class="okvir around center" id="proba">
        <div id="logo"><h1>SKSport</h1></div>
        <div id="linije">
            <a href="#"><i class="fa fa-bars"></i></a>

        </div>
        <div id="meni">
            <ul class="between">
                @foreach($links as $link)
                    @if(!$link->footer)
                        <li><a href="{{route($link->route)}}">{{$link->name}}</a></li>
                    @endif
                @endforeach
                    @if(Auth::check())
                        @if(Auth::user()->role->id==1)
                            <li>
                                <a href="{{route("admin.show")}}">
                                    Admin
                                </a>
                            </li>
                        @endif
                    @endif

                    @if(Auth::check())
                        <li class="ikonice">
                            <a href="{{route("cart.index")}}">
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="ikonice">
                            <form method="post" action="{{route("logout")}}">
                                @csrf
                                <button type="submit" name="logout"  id="logout">Log Out</button>
                            </form>
                        </li>
                    @else
                        <li class="ikonice">
                            <a href="#" id="user-ikonica">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </a>
                        </li>
                    @endif


            </ul>
        </div>
    </div>
</nav>

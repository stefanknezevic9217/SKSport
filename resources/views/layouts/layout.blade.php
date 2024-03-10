<!DOCTYPE html>
<html>

    @include('fixed.head')
    <body>
        @include('fixed.nav')
        @yield('content')
        @include('fixed.footer')
        <script>
            var token = '{{ csrf_token() }}'
        </script>
        @include('fixed.script')

        @yield('js')
        @if(!Auth::check())
            @include('fixed.loginForm')
        @endif
    </body>
</html>

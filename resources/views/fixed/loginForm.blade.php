<div id="log-prozor">
    <div id="iks"><i class="fa fa-close"></i></div>
    <form id="forma-logovanje" name="forma-logovanje" class="around" action="" method="">
        <p>Email:</p>
        <input type="text" name="user" id="user" placeholder="Email"/>
        <p>Password:</p>
        <input type="password" name="log-pass" id="log-pass" placeholder="Password"/>
        <input type="button" id="login-button" class="dugme" name="dugme-log" value="Log in"/>
        <a href="{{route("registration")}}">Registruj se</a>
        <div id="greskeLog">
            <ul></ul>
        </div>
    </form>


</div>
<div id="prozirno"></div>

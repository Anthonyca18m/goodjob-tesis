<header class="theme-default">
    <div id="search-box">
      <div class="container">
        <form action="{{ route('web') }}" method="GET">
          <input type="text" placeholder="Ingrese palabra a buscar" name="search"/>
          <button><i class="fas fa-arrow-right"></i></button>
        </form>
      </div>
    </div>
    <div class="container">
      <div class="header-wrapper"><a class="header__logo" href="{{ route('web') }}"><img src="images/logogb.png" alt="Logo"/></a>
        <nav class="mt-3">
          <ul>
            <li class="nav-item active"><a href="{{ route('web') }}">Inicio</a>
            </li>
            <li class="nav-item"><a href="{{ route('nosotros') }}">Nosotros</a></li>
            <li class="nav-item"><a href="{{ route('contacts') }}">Contáctanos</a></li>
          </ul>
        </nav>
        <div class="header__icon-group">
            <a href="#" id="search"><i class="fas fa-search"></i></a>
            <div class="social">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                @guest
                    <a href="#" data-toggle="modal" data-target="#loginModal">
                        Entrar <i class="far fa-sign-in-alt" title="Iniciar Sesión"></i>
                    </a>
                    <a href="#" data-toggle="modal" data-target="#RegisterClientModal">
                        ¿Eres Nuevo?<i class="far fa-user-plus" title="Regístrate Aquí"></i>
                    </a>
                @else
                    <a href="#" title="Mi perfil">
                        {{ Auth::user()->email }} <i class="fad fa-user-circle"></i>
                    </a>
                @endguest
                <a id="mobile-menu-controller" href="#"><i class="fas fa-bars"></i></a>
            </div>
        </div>
      </div>
    </div>
</header>

@include('utils.modal_login')
<modal-register-client-component></modal-register-client-component>

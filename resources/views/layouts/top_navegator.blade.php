<header class="theme-default">
    <div id="search-box">
      <div class="container">
        <form action="https://afinda.vn/" method="POST">
          <input type="text" placeholder="Searching for news" name="search"/>
          <button><i class="fas fa-arrow-right"></i></button>
        </form>
      </div>
    </div>
    <div class="container">
      <div class="header-wrapper"><a class="header__logo" href="index.html"><img src="images/logo.png" alt="Logo"/></a>
        <nav>
          <ul>
            <li class="nav-item active"><a href="index.html">Home</a>
              <ul class="dropdown-menu">
                <li><a href="index.html">HOMEPAGE1</a></li>
                <li><a href="homepage2.html">HOMEPAGE2</a></li>
                <li><a href="homepage3.html">HOMEPAGE3</a></li>
                <li><a href="homepage4.html">HOMEPAGE4</a></li>
                <li><a href="homepage5.html">HOMEPAGE5</a></li>
                <li><a href="homepage6.html">HOMEPAGE6</a></li>
                <li><a href="homepage7.html">HOMEPAGE7</a></li>
                <li><a href="homepage8.html">HOMEPAGE8</a></li>
                <li><a href="homepage9.html">HOMEPAGE9</a></li>
              </ul>
            </li>
            <li class="nav-item"><a>Blog</a>
              <ul class="dropdown-menu">
                <li><a href="blog_category_grid.html">BLOG CATEGORY GRID</a></li>
                <li><a href="blog_category_list.html">BLOG CATEGORY LIST</a></li>
                <li><a href="post_standard.html">POST STANDARD</a></li>
                <li><a href="post_standard_image_full.html">POST STANDARD IMAGE FULLWIDTH</a></li>
                <li><a href="post_standard_sidebar.html">POST STANDARD SIDEBAR</a></li>
                <li><a href="post_gallery.html">POST GALLERY</a></li>
                <li><a href="post_video.html">POST VIDEO</a></li>
                <li><a href="post_audio.html">POST AUDIO</a></li>
                <li><a href="post_quote.html">POST QUOTE</a></li>
              </ul>
            </li>
            <li class="nav-item"><a href="#">Pages</a>
              <ul class="dropdown-menu">
                <li><a href="author.html">AUTHOR</a></li>
                <li><a href="about.html">ABOUT</a></li>
                <li><a href="contact.html">CONTACT</a></li>
                <li><a href="shop.html">SHOP</a></li>
                <li><a href="product_detail.html">PRODUCT DETAIL</a></li>
                <li><a href="cart.html">CART</a></li>
                <li><a href="checkout.html">CHECKOUT</a></li>
                <li><a href="error_404.html">ERROR</a></li>
              </ul>
            </li>
            <li class="nav-item"><a href="about.html">About</a></li>
            <li class="nav-item"><a href="contact.html">Contact</a></li>
          </ul>
        </nav>
        <div class="header__icon-group"><a href="#" id="search"><i class="fas fa-search"></i></a>
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

                <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        {{ Auth::user()->name }} <span class="caret"></span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </div>
                </li>

                @endguest

                <a id="mobile-menu-controller" href="#"><i class="fas fa-bars"></i></a>
            </div>
        </div>
      </div>
    </div>
</header>

@include('utils.modal_login')
<modal-register-client-component></modal-register-client-component>

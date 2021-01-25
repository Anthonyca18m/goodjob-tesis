<footer>
    <div class="container">
        <div class="footer-content">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="footer-col -about">
                        <div class="center-line-title">
                            <h5>Sobre Nosotros</h5>
                        </div>
                        <p>Este proyecto tiene como objetivo mejorar la calidad del medio ambiente en Lima Metropolitana - Perú</p>
                        <div class="contact-method">
                            <p> <i class="fas fa-map-marker-alt"></i>Av Tesis con IDAT - a lado de UTP</p>
                            <p> <i class="far fa-mobile-android"></i>999 999 999 - 999 999 999</p>
                            <p> <i class="fas fa-headphones-alt"></i>developer@goodjoblatam.com</p>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="footer-col -feature-post">
                        <div class="center-line-title">
                            <h5>Actividades Recientes</h5>
                        </div>
                        <div class="feature-post-block">
                            @foreach ($activities as $activity)
                                <div class="post-card -tiny">
                                    <a class="card__cover" href="{{ route('activity', [$activity->title]) }}">
                                        <img src="{{ $activity->resource[0]->resource }}" alt="{{ $activity->title }}" />
                                    </a>
                                    <div class="card__content">
                                        <a class="card__content-title" href="{{ route('activity', [$activity->title]) }}">{{ $activity->title }}</a>
                                        <div class="card__content-info">
                                            <div class="info__time">
                                                <i class="far fa-clock"></i><p>{{ $activity->created_at->format('H:i:s a m/d/Y') }}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-4">
                    <div class="footer-col -util">
                        <div class="row">
                            <div class="col-12 col-md-6 col-lg-12">
                                <div class="center-line-title">
                                    <h5>Distritos</h5>
                                </div>
                                <div class="tags-group">
                                    <a class="tag-btn" href="">Comas</a>
                                    <a class="tag-btn" href="">Miraflores</a>
                                    <a class="tag-btn" href="">Carabayllo</a>
                                    <a class="tag-btn" href="">San Martin de Porres</a>
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-12">
                                <div class="center-line-title">
                                    <h5>Siguenos en</h5>
                                </div>
                                <div class="social-block">
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                    <a href=""><i class="fab fa-dribbble"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p>© {{ now()->year }}, Goodjob - Por una mejor calidad de vida. Todos los derechos reservados.</p>
        </div>
    </div>
</footer>

@extends('layouts.app')

@section('content')
<div id="load">
    <div class="load__content">
        <div class="load__icon">
            <img src="images/icons/load.gif" alt="Loading icon" />
        </div>
    </div>
</div>

@include('layouts.top_navegator')

<div id="content">
    <div class="container-full p-3">
        <div class="row justify-content-center">

            @if (Auth::check())
                <div class="col-md-7 p-4">

                    @if (Auth::check() && $user->account_type_id == 2)
                        <form-register-activity-component :user_id="{{ auth()->user()->id }}"></form-register-activity-component>
                    @endif

                    <div class="blog-masonry">
                        @forelse ($activities as $activity)
                            <div class="post-card -center">
                                <div class="card__cover -slide">
                                    <div class="card__cover__slide-item">
                                        <img src="{{ $activity->resource[0]->resource }}" alt="{{ $activity->title }}" />
                                    </div>
                                </div>
                                <div class="card__content">
                                    <h5 class="card__content-category">{{ $activity->district->name }}</h5>
                                    <a class="card__content-title" href="">{{ $activity->title }}</a>
                                    <div class="card__content-info">
                                        <div class="info__comment m-2" title="Me gusta">
                                            <i class="fa fa-heart"></i>
                                            <p>3</p>
                                        </div>
                                        <div class="info__comment m-2" title="Comentarios">
                                            <i class="far fa-comment"></i>
                                            <p>3</p>
                                        </div>
                                        <div class="info__comment m-2" title="Personas Requeridas">
                                            <i class="far fa-users"></i>
                                            <p>3</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @empty

                        @endforelse
                    </div>
                    <div class="row justify-content-center">
                        <div>{{ $activities->links() }}</div>
                    </div>
                </div>
                <div class="col-md-3 p-4">
                    @auth
                        <div class="card shadow-sm">
                            <div class="card-header bg-white">
                                <h3 class="text-center">Mi Información</h3>
                            </div>
                            <div class="card-body">
                                <table class="table table-profile">
                                    <tbody>
                                        <div class="text-center p-3">
                                            <img src="{{ $user->image->resource }}" alt="Avatar" class="avatar">
                                            @if ($user->account_type_id == 2)
                                                <h4 class="mt-3">{{ $user->profile->trade_name }}</h4>
                                            @else
                                                <h4 class="mt-3">{{ $user->profile->name }}</h4>
                                            @endif
                                        </div>
                                        <tr>
                                            <th><i class="fad fa-user-circle"></i> Mi perfil</th>
                                        </tr>
                                        @if ($user->account_type_id == 1)
                                            <tr>
                                                <th><i class="fad fa-th-list"></i> Mis postulaciones</th>
                                            </tr>
                                        @endif
                                        @if ($user->account_type_id == 2)
                                            <tr>
                                                <th><i class="fad fa-th-list"></i> Mis actividades</th>
                                            </tr>
                                        @endif
                                        <tr>
                                            <th onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                <i class="fad fa-sign-out-alt"></i> Cerrar Sesión
                                            </th>
                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    @endauth

                </div>
            @else
                <div class="col-md-9">
                    <div class="blog-masonry">
                        @forelse ($activities as $activity)
                            <div class="post-card -center">
                                <div class="card__cover -slide">
                                    <div class="card__cover__slide-item">
                                        <img src="{{ $activity->resource[0]->resource }}" alt="{{ $activity->title }}" />
                                    </div>
                                </div>
                                <div class="card__content">
                                    <h5 class="card__content-category">{{ $activity->district->name }}</h5>
                                    <a class="card__content-title" href="">{{ $activity->title }}</a>
                                    <div class="card__content-info">
                                        <div class="info__comment m-2" title="Me gusta">
                                            <i class="fa fa-heart"></i>
                                            <p>3</p>
                                        </div>
                                        <div class="info__comment m-2" title="Comentarios">
                                            <i class="far fa-comment"></i>
                                            <p>3</p>
                                        </div>
                                        <div class="info__comment m-2" title="Personas Requeridas">
                                            <i class="far fa-users"></i>
                                            <p>3</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @empty

                        @endforelse
                    </div>
                    <div class="row justify-content-center">
                        <div>{{ $activities->links() }}</div>
                    </div>
                </div>
            @endif
        </div>
        <div class="instagrams">
            <div class="instagrams-container"><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/1.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/2.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/3.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/4.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/5.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/1.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/3.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a><a class="instagrams-item" href="https://www.instagram.com/"><img src="images/instagram/4.png" alt="Instagram image" />
                    <div class="instagrams-item__content"><i class="fab fa-instagram"></i>
                        <p>@ Gtute_News</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection

@extends('layouts.app')

@section('content')
@include('utils.preload')

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
                                        <a href="{{ route('activity', [$activity->title]) }}">
                                            <img src="{{ $activity->resource[0]->resource }}" alt="{{ $activity->title }}" />
                                        </a>
                                    </div>
                                </div>
                                <div class="card__content">
                                    <h5 class="card__content-category">{{ $activity->district->name }}</h5>
                                    <a class="card__content-title" href="{{ route('activity', [$activity->title]) }}">{{ $activity->title }}</a>
                                    <div class="card__content-info">
                                        <div class="info__comment m-2" title="Me gusta">
                                            <i class="fa fa-heart"></i>
                                            <p>{{ $activity->likes_count }}</p>
                                        </div>
                                        <div class="info__comment m-2" title="Comentarios">
                                            <i class="far fa-comment"></i>
                                            <p>{{ $activity->comments_count }}</p>
                                        </div>
                                        <div class="info__comment m-2" title="Personas Requeridas">
                                            <i class="far fa-users"></i>
                                            <p>{{ $activity->person_required }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @empty

                        @endforelse
                    </div>
                    <div class="row justify-content-center">
                        <div>{{ $activities->withQueryString() }}</div>
                    </div>
                </div>
                <div class="col-md-3 p-4">
                    @include('layouts.sidebar_right')
                </div>
            @else
                <div class="col-md-9">
                    <div class="blog-masonry">
                        @forelse ($activities as $activity)
                            <div class="post-card -center">
                                <div class="card__cover -slide">
                                    <div class="card__cover__slide-item">
                                        <a href="{{ route('activity', [$activity->title]) }}">
                                            <img src="{{ $activity->resource[0]->resource }}" alt="{{ $activity->title }}" />
                                        </a>
                                    </div>
                                </div>
                                <div class="card__content">
                                    <h5 class="card__content-category">{{ $activity->district->name }}</h5>
                                    <a class="card__content-title" href="{{ route('activity', [$activity->title]) }}">{{ $activity->title }}</a>
                                    <div class="card__content-info">
                                        <div class="info__comment m-2" title="Me gusta">
                                            <i class="fa fa-heart"></i>
                                            <p>{{ $activity->likes_count }}</p>
                                        </div>
                                        <div class="info__comment m-2" title="Comentarios">
                                            <i class="far fa-comment"></i>
                                            <p>{{ $activity->comments_count }}</p>
                                        </div>
                                        <div class="info__comment m-2" title="Personas Requeridas">
                                            <i class="far fa-users"></i>
                                            <p>{{ $activity->person_required }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @empty

                        @endforelse
                    </div>
                    <div class="row justify-content-center">
                        <div>{{ $activities->withQueryString() }}</div>
                    </div>
                </div>
            @endif
            
        </div>
    </div>
</div>


@include('layouts.footer')

@endsection

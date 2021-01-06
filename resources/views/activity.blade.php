@extends('layouts.app')

@section('content')
@include('utils.preload')

@include('layouts.top_navegator')

<div id="content">
    <div class="container-full p-3">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="row justify-content-center">
                    @if (Auth::check())
                    <div class="col-md-7 text-center border rounded">
                        <h1>{{ $activity->title }}</h1>
                        <img class="img-fluid" src="{{ $activity->resource[0]->resource }}" alt="">
                            <div class="d-flex d-inline justify-content-center">
                                <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Me gusta">
                                    <p class="p-0">3 <i class="fa fa-heart"></i> Me gusta</p>
                                </button>
                                <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Comentarios">
                                    <p class="p-0">3 <i class="far fa-comment"></i> Comentarios</p>
                                </button>
                                <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Personas Requeridas">
                                    <p class="p-0">3 <i class="far fa-users"></i> Personas requeridas</p>
                                </button>
                            </div>
                        <div class="d-flex">
                            <h5 class="border rounded p-3">Etiquetas: </h5>
                        </div>
                        <h5 class="mt-3">{{ $activity->description }}</h5>
                        <div class="overflow-auto d-flex">
                            @foreach ($activity->resource as $resource)
                            <img class="img-fluid m-1" src="{{ $resource->resource }}" width="100" alt="">
                            @endforeach
                        </div>
                        <div class="col-md-12">
                            @if ($user->account_type_id == 1)
                                <btn-postulation-activity-component :activity_id="{{ $activity->id }}"></btn-postulation-activity-component>
                            @endif

                        </div>
                    </div>
                    <div class="col-md-3">
                        @include('layouts.sidebar_right')
                    </div>
                    <div class="col-md-10">
                        <div class="post-footer__comment border-top mt-3 border-success rounded">
                            <h3 class="comment-title text-center"> <span>Comentarios</span></h3>
                            <div class="post-footer__comment__detail border rounded pl-3 pr-3 pt-3 shadow-sm">
                                <div class="comment__item">
                                    <div class="comment__item__avatar">
                                        <img class="img-fluid" src="{{ $user->image->resource }}" alt="Author avatar" width="50" />
                                    </div>
                                    <div class="comment__item__content">
                                        <div class="comment__item__content__header">
                                            <h5>Brandon Kelley</h5>
                                            <div class="data">
                                                <p><i class="far fa-clock"></i>Agosto,15, 2019</p>
                                                <p><i class="far fa-heart"></i>12</p>
                                            </div>
                                        </div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore aliqua. Quis ipsum suspendisse ultrices gravida lacus vel facilisis.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="post-footer__comment__form">
                                <textarea placeholder="Escribe tu comentario" name="message"></textarea>
                                <button class="btn btn-light border text-right pl-5 pr-5">Comentar</button>
                            </div>
                        </div>
                    </div>
                    @else
                    <div class="col-md-12">
                        <h1>{{ $activity->title }}</h1>
                        <img src="{{ $activity->resource[0]->resource }}" alt="">
                        <h5 class="mt-3">{{ $activity->description }}</h5>
                        <div class="overflow-auto d-flex">
                            @foreach ($activity->resource as $resource)
                            <img class="img-fluid m-1" src="{{ $resource->resource }}" width="100" alt="">
                            @endforeach
                        </div>
                    </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection

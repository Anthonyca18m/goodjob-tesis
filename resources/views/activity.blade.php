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
                    <div class="col-md-7 text-center border rounded p-3">
                        <h1>{{ $activity->title }}</h1>
                        <p class="h5">Distrito:  <h5>{{ $activity->district->name }}</h5></p>
                        <img class="img-fluid" src="{{ $activity->resource[0]->resource }}">
                        <div class="col-md-12 overflow-auto d-flex p-0 pt-2">
                            @foreach ($activity->resource as $resource)
                                <img class="img-fluid m-1" src="{{ $resource->resource }}" width="100">
                            @endforeach
                        </div>
                        <div class="d-flex d-inline justify-content-center">
                            <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Me gusta">
                                <p class="p-0">{{ $activity->likes_count }} <i class="fa fa-heart"></i> Me gusta</p>
                            </button>
                            <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Comentarios">
                                <p class="p-0">{{ $activity->comments_count }} <i class="far fa-comment"></i> Comentarios</p>
                            </button>
                            <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Personas Requeridas">
                                <p class="p-0">{{ $activity->person_required }} <i class="far fa-users"></i> Personas requeridas</p>
                            </button>
                        </div>
                        <div class="d-flex">
                            <h5 class="border rounded p-2">Etiquetas: </h5>
                            <h6 class="border rounded p-1 pt-2 ml-1">
                                @foreach ($activity->tags as $tag)
                                    {{ $tag->name }} ,
                                @endforeach
                            </h6>
                        </div>
                        <h5 class="mt-3 text-left">{{ $activity->description }}</h5>
                        <div class="col-md-12 rounded btn-success p-2">
                            <h5>Monto de recompensa por la actividad es de: S/ {{ number_format($activity->reward->reward, 2) }}</h5>
                        </div>
                        <div class="mt-3">
                            <p class="float-left">
                                <b>Fecha de Inicio de Actividad: </b> {{ $activity->date_init }}
                            </p>
                            <p class="float-right">
                                <b>Fecha de Fin de Actividad: </b> {{ $activity->date_end }}
                            </p>
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
                        <comments-activity-component :activity_id="{{ $activity->id }}"></comments-activity-component>
                    </div>
                    @else
                        <div class="col-md-12 text-center border rounded p-3">
                            <h1>{{ $activity->title }}</h1>
                            <p class="h5">Distrito:  <h5>{{ $activity->district->name }}</h5></p>
                            <img class="img-fluid" src="{{ $activity->resource[0]->resource }}" alt="">
                                <div class="d-flex d-inline justify-content-center">
                                    <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Me gusta">
                                        <p class="p-0">{{ $activity->likes_count }} <i class="fa fa-heart"></i> Me gusta</p>
                                    </button>
                                    <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Comentarios">
                                        <p class="p-0">{{ $activity->comments_count }} <i class="far fa-comment"></i> Comentarios</p>
                                    </button>
                                    <button class="info__comment m-2 pl-3 pr-3 pt-2 rounded border bg-light" title="Personas Requeridas">
                                        <p class="p-0">{{ $activity->person_required }} <i class="far fa-users"></i> Personas requeridas</p>
                                    </button>
                                </div>
                            <div class="d-flex">
                                <h5 class="border rounded p-2">Etiquetas: </h5>
                                <h6 class="border rounded p-1 pt-2 ml-1">
                                    @foreach ($activity->tags as $tag)
                                        {{ $tag->name }} ,
                                    @endforeach
                                </h6>
                            </div>
                            <h5 class="mt-3 text-left">{{ $activity->description }}</h5>
                            <div class="col-md-12 rounded btn-success p-2">
                                <h5>Monto de recompensa por la actividad es de: S/ {{ number_format($activity->reward->reward, 2) }}</h5>
                            </div>
                            <div class="mt-3">
                                <p class="float-left">
                                    <b>Fecha de Inicio de Actividad: </b> {{ $activity->created_at->format('H:m:i a d/m/Y') }}
                                </p>
                                <p class="float-right">
                                    <b>Fecha de Fin de Actividad: </b> {{ $activity->created_at->format('H:m:i a d/m/Y') }}
                                </p>
                            </div>
                            <div class="col-md-12 overflow-auto d-flex">
                                @foreach ($activity->resource as $resource)
                                <img class="img-fluid m-1" src="{{ $resource->resource }}" width="100" alt="">
                                @endforeach
                            </div>
                        </div>
                        <div class="col-md-10">
                            <comments-activity-component :activity_id="{{ $activity->id }}"></comments-activity-component>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection

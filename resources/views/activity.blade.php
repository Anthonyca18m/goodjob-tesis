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
                        <comments-activity-component :activity_id="{{ $activity->id }}"></comments-activity-component>
                    </div>
                    @else
                    <div class="col-md-12 text-center">
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

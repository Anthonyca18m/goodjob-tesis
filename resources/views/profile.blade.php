@extends('layouts.app')

@section('content')
@include('utils.preload')

@include('layouts.top_navegator')

<div id="content">
    <div class="container-full p-3">
        <div class="row justify-content-center">

            @if (Request::query('q') == 'postulations')
                <div class="col-md-7">
                    @foreach ($postulations as $postulation)
                        <div class="card m-1">
                            <div class="card-body">
                                <a target="_blank" href="{{ route('activity', [$postulation->title]) }}" class="text-dark text-decoration-none">
                                    <img src="{{ $postulation->resource[0]->resource }}" width="150" class="img-fluid float-left mr-3">
                                </a>
                                @if ($postulation->postulants[0]->status == 2)
                                    <leave-activity-component :postulation_id="{{ $postulation->postulants[0]->id }}"></leave-activity-component>
                                @endif
                                <a target="_blank" href="{{ route('activity', [$postulation->title]) }}" class="text-dark text-decoration-none">
                                    <h5 class="card-title">{{ $postulation->title }}</h5>
                                </a>
                                <p>
                                    Estado de Postulación:
                                    @switch($postulation->postulants[0]->status)
                                        @case(1)
                                            <a class="btn btn-sm btn-success text-white">Aceptado</a>
                                            @break
                                        @case(2)
                                            <a class="btn btn-sm btn-info text-white">En Revisión</a>
                                            @break
                                        @default
                                            <a class="btn btn-sm btn-danger text-white">Rechazado</a>
                                    @endswitch
                                </p>
                                <p class="float-right">Fecha de Postulación : <b>{{ $postulation->postulants[0]->created_at->format('H:i:s a d/m/Y') }}</b></p>
                            </div>
                        </div>
                    @endforeach
                    <div class="mx-auto">{{ $postulations->links() }}</div>
                </div>
            @endif
            @if (Request::query('q') == 'profile')
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <form-profile-client-component :user="{{ $user }}"></form-profile-client-component>
                        </div>
                    </div>
                </div>
            @endif
            @if (Request::query('q') == 'activities')
                <div class="col-md-7">
                    <h2 class="text-center bg-light rounded mb-3 p-3 border-bottom">Mis actividades publicadas</h2>
                    @foreach ($my_activities as $activity)
                        <div class="card m-1">
                            <div class="card-body">
                                <img src="{{ $activity->resource[0]->resource }}" width="150" class="img-fluid float-left mr-2">
                                <div class="float-left">
                                    <h5>{{ $activity->title }}</h5>
                                    Estado:
                                    @switch($activity->status)
                                        @case(1)
                                            <a class="btn btn-sm btn-success text-white">Activo</a>
                                            @break
                                        @case(0)
                                            <a class="btn btn-sm btn-info text-white">Terminado</a>
                                            @break
                                    @endswitch
                                </div>
                                <p class="float-right">Fecha de Registro : <b>{{ $activity->created_at->format('H:i:s a d/m/Y') }}</b></p>
                            </div>
                            <div class="card-footer p-1">
                                <button class="btn btn-primary btn-sm float-left m-1">Editar Información</button>
                                <button class="btn btn-primary btn-sm float-left m-1">Agregar Imagen</button>
                                <button class="btn btn-primary btn-sm float-left m-1">Agregar Video</button>

                                <button class="btn btn-danger btn-sm float-right m-1">Eliminar</button>
                                <btn-manage-postulants-component :activity_id="{{ $activity->id }}"></btn-manage-postulants-component>

                            </div>
                        </div>
                    @endforeach
                    <div class="row justify-content-center">
                        <div>{{ $my_activities->withQueryString() }}</div>
                    </div>
                </div>
            @endif

            <div class="col-md-3">
                @include('layouts.sidebar_right')
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection

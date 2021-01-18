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
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">{{ $postulation->activity->title }}</h5>
                                <p>
                                    Estado de Postulación:
                                    @switch($postulation->status)
                                        @case(1)
                                            <a class="btn btn-success text-white">Aceptado</a>
                                            @break
                                        @case(2)
                                            <a class="btn btn-info text-white">En Revisión</a>
                                            @break
                                        @default
                                            <a class="btn btn-danger text-white">Rechazado</a>
                                    @endswitch
                                </p>
                                <p class="float-right">Fecha de Postulación : <b>{{ $postulation->created_at->format('H:i:s a d/m/Y') }}</b></p>
                            </div>
                        </div>
                    @endforeach
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

            <div class="col-md-3">
                @include('layouts.sidebar_right')
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection

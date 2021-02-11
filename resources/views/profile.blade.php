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
                            <div class="card-body d-flex">
                                <img src="{{ $activity->resource[0]->resource }}" width="150" class="img-fluid float-left mr-2">
                                <div>
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
                                    <table class="m-2">
                                        <tbody>
                                            <tr>
                                                <td><b>Fecha de Inicio: </b><br> {{ $activity->date_init }}</td>
                                                <td><b>Hasta: </b> <br>{{ $activity->date_end }}</td>
                                                <td><b>Personas Requeridas: </b> <br>{{ $activity->person_required }}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <p class="text-right">Fecha de Registro : <b>{{ $activity->created_at->format('H:i:s a d/m/Y') }}</b></p>

                            </div>
                            <div class="card-footer p-1">
                                <btn-edit-activity-component :activity_id="{{ $activity->id }}"></btn-edit-activity-component>
                                <btn-add-image-activity-component  :activity_id="{{ $activity->id }}"></btn-add-image-activity-component>

                                <btn-destroy-activity-component :activity_id="{{ $activity->id }}"></btn-destroy-activity-component>
                                <btn-manage-postulants-component :activity_id="{{ $activity->id }}"></btn-manage-postulants-component>

                            </div>
                        </div>
                    @endforeach
                    <div class="row justify-content-center">
                        <div>{{ $my_activities->withQueryString() }}</div>
                    </div>
                </div>
            @endif

            @if (Request::query('q') == 'administrator')
                <div class="col-md-7">
                    <h2 class="text-center bg-light rounded mb-3 p-3 border-bottom">Administrador</h2>
                    <div class="row">
                        @foreach ($companies as $company)
                            <div class="col-md-12 mb-2">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <img src="{{ $company->image->resource }}" class="img-fluid" width="100" alt="">
                                            </div>
                                            <div class="col-md-3">
                                                <p>Razón Social: {{ $company->profile->bussiness_name }}</p>
                                                <p>Nombre Comercial: {{ $company->profile->trade_name }}</p>
                                                <p>RUC: {{ $company->profile->ruc }}</p>
                                            </div>
                                            <div class="col-md-3">
                                                <p>Email: {{ $company->email }}</p>
                                                <p>Fecha de Solicitud de Registro: {{ $company->created_at->format('Y/m/d H:i:s a') }}</p>
                                                <p>Estado de cuenta: {{ ($company->status == 3) ? 'Pendiente' : 'No definido' }}</p>
                                            </div>
                                            <div class="col-md-3">
                                                <btn-accept-denied-company-component :company_id="{{ $company->id }}"></btn-accept-denied-company-component>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                    <div class="row justify-content-center">
                        <div>{{ $companies->withQueryString() }}</div>
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

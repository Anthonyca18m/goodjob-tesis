@extends('layouts.app')

@section('content')
@include('utils.preload')

@include('layouts.top_navegator')

<div id="content">
    <div class="container-full p-3">
        <div class="row justify-content-center">
            <div class="col-md-10 text-center">
                <div class="row justify-content-center">
                    <div class="col-md-7">
                        <h1>{{ $activity->title }}</h1>
                        <img src="{{ $activity->resource[0]->resource }}" alt="">
                        <h5 class="mt-3">{{ $activity->description }}</h5>
                    </div>
                    <div class="col-md-3">
                        @include('layouts.sidebar_right')
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@include('layouts.footer')

@endsection

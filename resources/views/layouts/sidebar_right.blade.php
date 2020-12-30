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

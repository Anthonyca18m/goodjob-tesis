<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header mx-auto">
                <h5 class="modal-title text-center" id="exampleModalLabel">Iniciar Sesión</h5>
            </div>
            <div class="modal-body">
                <form id="FormLogin" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="row pl-5 pr-5">
                        <div class="col-md-12 text-center">
                            <label class="m-1">Email:</label>
                            <input type="email" name="email" id="email" class="form-control @error('email') is-invalid @enderror"
                             placeholder="Ejem: email@example.com" required autocomplete="email" autofocus>
                             @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="col-md-12 text-center">
                            <label class="m-1">Contraseña:</label>
                            <input type="password" name="password" id="password"
                                class="form-control @error('password') is-invalid @enderror" placeholder="********"
                                required autocomplete="current-password">
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <div class="form-check float-left mt-2">
                                <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                <label class="form-check-label mt-1" for="remember">
                                    Recordarme
                                </label>
                            </div>
                            @if (Route::has('password.request'))
                                    <a class="btn btn-link float-right" href="{{ route('password.request') }}">
                                        ¿Olvidaste tu contraseña?
                                    </a>
                                @endif
                        </div>
                        <div class="col-md-12 text-center mt-3">
                            <button type="submit" class="btn btn-light border">Iniciar Sesión</button>
                        </div>
                        <div class="col-md-12 text-center">
                            <hr>
                            <p class="mb-2">O inicia sesión con</p>
                            <a class="btn btn-primary border btn-sm">Iniciar con Facebook <i class="fab fa-facebook"></i></a>
                            <a class="btn btn-light border btn-sm">Iniciar con Google <i class="fab fa-google"></i></a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

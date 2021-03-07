<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    /**
     * Report or log an exception.
     *
     * @param  \Throwable  $exception
     * @return void
     *
     * @throws \Throwable
     */
    public function report(Throwable $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $exception
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \Throwable
     */
    public function render($request, Throwable $exception)
    {
        // return parent::render($request, $exception);
        $message = "";
        $code = "";
        $error = "";
        switch ($exception->getCode()) {
            case 2002:
                $message = "Error de conexión de base de datos. Comuniquesé con un administrador.";
                $code = $exception->getCode();
                $error = $exception->getMessage();
                break;
            case '42S02':
                $message = "Error de nombre de la tabla incorrecto o tabla no existente en la base de datos. Comuniquesé con un administrador.";
                $code = $exception->getCode();
                $error = $exception->getMessage();
                break;
            case 1049:
                $message = "Error de base de datos inexistente. Comuniquesé con un administrador.";
                $code = $exception->getCode();
                $error = $exception->getMessage();
                break;
            default:
                $message = "Error interno. Comuniquesé con un administrador.";
                $code = $exception->getCode();
                $error = $exception->getMessage();
                break;
        }

        return response( [ 'message' => $message, 'statusCode' => $code, 'success' => false, 'error' => $error ], 500);
    }
}

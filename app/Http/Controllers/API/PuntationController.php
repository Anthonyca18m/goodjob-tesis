<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PuntationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }
}

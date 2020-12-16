<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{

    public function login(Request $request)
    {
        $validate = $this->validate($request, [
            'email' => 'required|email|max:255|exists:users,email',
            'password' => 'required|min:6|max:255',
        ]);

        if($validate){

            if (Auth::attempt(['email' => $request->email, 'password' => $request->password, 'status' => 1])) {
                return redirect()->route('web');
            } else {
                return redirect()->route('web');
            }
        }
    }

    public function logout(Request $request) {
        Auth::logout();
        return redirect()->route('web');
    }
}

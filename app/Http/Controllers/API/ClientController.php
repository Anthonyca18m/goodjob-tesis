<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ClientController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth:api');
    }

    public function store(Request $request)
    {
        $reqdocument = "required|min:8|max:8";
        $reqcompany = "";
        $unique = "";
        $reqname = "";

        switch ($request->type_document) {
            case 2:
                $start = '|starts_with:10';
                if($request->typeuser == true){
                    $start = '|starts_with:20';
                }
                $reqdocument = "required|min:11|max:11" . $start;
                $reqcompany = "required|string|min:2|max:255";
                $unique = "|unique:profiles,ruc";
                $reqname = "";
                break;
            default:
                $reqdocument = "required|min:8|max:8";
                $reqcompany = "";
                $reqname = "required|min:2|max:255";
                $unique = "|unique:profiles,document";
                break;
        }

        $validate = $this->validate($request, [
            'name' => $reqname,
            'businessname' => "$reqcompany",
            'tradename' => "$reqcompany",
            'type_document' => 'required|min:1|max:3',
            'document' => $reqdocument . $unique,
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|min:6|max:255',
            'repassword' => 'required|min:6|max:255|same:password',
        ]);

        if($validate){

            DB::transaction(function () use($request) {
                $client = User::create([
                    'account_type_id' => ($request->typeuser == true) ? 2 : 1,
                    'email' => $request->email,
                    'password' => Hash::make($request->password),
                    'register' => 'web',
                    'status' => ($request->typeuser == true) ? 3 : 1
                ]);

                $client->profile()->create([
                    'user_id' => $client->id,
                    'name' => $request->name,
                    'bussiness_name' => $request->businessname,
                    'trade_name' => $request->tradename,
                    'document' => ($request->type_document != 2) ? $request->document : '',
                    'ruc' => ($request->type_document == 2) ? $request->document : '',
                    'type_document_id' => $request->type_document,
                    'country' => $request->country,
                ]);

                $client->image()->create([
                    'type_resource_id' => 1, // 1 => Perfil de Cliente
                    'resource' => config('app.default_profile')
                ]);
            });
        }
    }
}

<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

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

    public function update(Request $request)
    {
        $validate = $this->validate($request, ['id' => 'required|exists:users,id']);

        if($validate){

            $user = User::find($request->id);
            $profile = Profile::where('user_id', $request->id)->first();

            switch ($request->updated) {
                case 'basic':

                    if($user->account_type_id == 1){
                        $validate = $this->validate($request, [
                            'name' => 'required|string|min:2|max:255',
                            'document_type' => 'required',
                            'document' => ['required', 'min:8', 'max:8', Rule::unique('profiles', 'document')->ignore($user->id, 'user_id')],
                            'ruc' => ['required', 'min:11', 'max:11', Rule::unique('profiles', 'document')->ignore($user->id, 'user_id')],
                            'date_nac' => 'required',
                            'gener' => 'required'
                        ]);
                        if($validate){

                            $profile->name = $request->name;
                            $profile->type_document_id = $request->document_type;
                            $profile->document = $request->document;
                            $profile->ruc = $request->ruc;
                            $profile->birth_date = $request->date_nac;
                            $profile->gener = $request->gener;
                        }
                    } else if($user->account_type_id == 2){
                        $validate = $this->validate($request, [
                            'trade_name' => 'required|string|min:2|max:255',
                            'bussines_name' => 'required|string|min:2|max:255',
                            'ruc' => ['required', 'min:11', 'max:11', Rule::unique('profiles', 'ruc')->ignore($user->id, 'user_id')],
                        ]);
                        if($validate){
                            $profile->bussiness_name = $request->bussines_name;
                            $profile->trade_name = $request->trade_name;
                            $profile->ruc = $request->ruc;
                        }
                    }
                    $profile->save();

                    break;
                case 'contact':
                    $validate = $this->validate($request, [
                        'phone' => 'required',
                        'facebook' => 'required|url',
                        'twitter' => 'required|url',
                        'github' => 'required|url',
                        'linkedin' => 'required|url',
                    ]);
                    if($validate){

                        $profile->phone = $request->phone;
                        $profile->email_opt = $request->email_opt;
                        $profile->facebook = $request->facebook;
                        $profile->twitter = $request->twitter;
                        $profile->github = $request->github;
                        $profile->linkedin = $request->linkedin;
                        $profile->save();
                    }


                    break;
                case 'address':
                    $validate = $this->validate($request, [
                        'ubigeo' => 'required',
                        'address' => 'required|max:255',
                        'address_reference' => 'required|max:255',
                    ]);

                    if($validate){
                        $profile->ubigeo = $request->ubigeo;
                        $profile->address = $request->address;
                        $profile->address_reference = $request->address_reference;
                        $profile->save();
                    }

                    break;
            }
        }

    }

    public function updateImg(Request $request)
    {
        $validate = $this->validate($request, [
            'img' => 'required|max:500',
        ]);
    }
}

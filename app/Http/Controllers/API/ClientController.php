<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Profile;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class ClientController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function index()
    {
        return User::with('profile')->get();
    }

    public function show($id)
    {
        $user = User::with('profile')->find($id);

        if(!is_null($user)) {
            return $user;
        } else {
            return response(['message' => 'El usuario no existe','success'=>false, 'statusCode' => 200]);
        }
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

        $validate = Validator::make($request->all(), [
            'name' => $reqname,
            'businessname' => "$reqcompany",
            'tradename' => "$reqcompany",
            'type_document' => 'required|min:1|max:3',
            'document' => $reqdocument . $unique,
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|min:6|max:255',
            'repassword' => 'required|min:6|max:255|same:password',
        ]);

        if(!$validate->fails()){

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

            return response()->json(['data'=> User::OrderBy('created_at', 'desc')->limit(1)->get()]);
        } else {
            $message = $validate->errors();
            return response()->json(['errors'=>$message], 422);
        }
    }

    public function update(Request $request)
    {
        $validate = $validate = Validator::make($request->all(), ['id' => 'required|exists:users,id']);

        if(!$validate->fails()){

            $user = User::with('profile')->find($request->id);
            $profile = Profile::where('user_id', $request->id)->first();

            switch ($request->updated) {
                case 'basic':

                    if($user->account_type_id == 1){
                        $validate = Validator::make($request->all(), [
                            'name' => 'required|string|min:2|max:255',
                            'document_type' => 'required',
                            'document' => ['required', 'min:8', 'max:8', Rule::unique('profiles', 'document')->ignore($user->id, 'user_id')],
                            'ruc' => ['required', 'min:11', 'max:11', Rule::unique('profiles', 'document')->ignore($user->id, 'user_id')],
                            'date_nac' => 'required',
                            'gener' => 'required'
                        ]);
                        if(!$validate->fails()){

                            $profile->name = $request->name;
                            $profile->type_document_id = $request->document_type;
                            $profile->document = $request->document;
                            $profile->ruc = $request->ruc;
                            $profile->birth_date = $request->date_nac;
                            $profile->gener = $request->gener;
                        } else {
                            $message = $validate->errors();
                            return response()->json(['errors'=>$message], 422);
                        }
                    } else if($user->account_type_id == 2){
                        $validate = Validator::make($request->all(), [
                            'trade_name' => 'required|string|min:2|max:255',
                            'bussines_name' => 'required|string|min:2|max:255',
                            'ruc' => ['required', 'min:11', 'max:11', Rule::unique('profiles', 'ruc')->ignore($user->id, 'user_id')],
                        ]);
                        if(!$validate->fails()){
                            $profile->bussiness_name = $request->bussines_name;
                            $profile->trade_name = $request->trade_name;
                            $profile->ruc = $request->ruc;
                        } else {
                            $message = $validate->errors();
                            return response()->json(['errors'=>$message], 422);
                        }
                    }
                    $profile->save();

                    break;
                case 'contact':
                    $validate = Validator::make($request->all(), [
                        'phone' => 'required',
                        'facebook' => 'required|url',
                        'twitter' => 'required|url',
                        'github' => 'required|url',
                        'linkedin' => 'required|url',
                    ]);
                    if(!$validate->fails()){

                        $profile->phone = $request->phone;
                        $profile->email_opt = $request->email_opt;
                        $profile->facebook = $request->facebook;
                        $profile->twitter = $request->twitter;
                        $profile->github = $request->github;
                        $profile->linkedin = $request->linkedin;
                        $profile->save();
                    } else {
                        $message = $validate->errors();
                        return response()->json(['errors'=>$message], 422);
                    }


                    break;
                case 'address':
                    $validate = Validator::make($request->all(), [
                        'ubigeo' => 'required',
                        'address' => 'required|max:255',
                        'address_reference' => 'required|max:255',
                    ]);

                    if(!$validate->fails()){
                        $profile->ubigeo = $request->ubigeo;
                        $profile->address = $request->address;
                        $profile->address_reference = $request->address_reference;
                        $profile->save();
                    } else {
                        $message = $validate->errors();
                        return response()->json(['errors'=>$message], 422);
                    }

                    break;
            }

            return response()->json(['data'=> User::with('profile')->find($request->id)]);

        } else {
            $message = $validate->errors();
            return response()->json(['errors'=>$message], 422);
        }

    }

    public function destroy($id)
    {
        $user = User::find($id);
        if(!is_null($user)){

            $user->status = 0;
            $user->save();

            return response(['message' => "El usuario : $user->email ha sido desactivado."]);
        } else {

            return response(['message' => "El usuario no existe"], 422);
        }
    }


    public function accept($company_id)
    {
        $user = User::find($company_id);
        $user->status = 1;
        $user->save();
    }

    public function denied($company_id)
    {
        $user = User::find($company_id);
        $user->status = 0;
        $user->save();
    }
}

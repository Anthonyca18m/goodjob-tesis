<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\AccountBank;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class BankController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth:api');
    }

    public function index()
    {
        return DB::table('banks')->get();
    }

    public function store(Request $request)
    {
        $validate = $this->validate($request, [
            'id' => 'required|exists:users,id',
            'bank' => 'required',
            'number_bank' => 'required|unique:account_banks,number|unique:account_banks,number_inter',
            'number_ibank' => 'required|unique:account_banks,number_inter|unique:account_banks,number',
        ]);

        if($validate){

            AccountBank::create([
                'bank_id' => $request->bank,
            	'user_id' => $request->id,
            	'number' => $request->number_bank,
            	'number_inter' => $request->number_ibank,
            	'status' => 1
            ]);
        }
    }

    public function show($user_id)
    {
        return AccountBank::with('bank')->where('user_id', $user_id)->orderByDesc('created_at')->get();
    }

    public function updateStatus($id)
    {
        $data = AccountBank::find($id);
        $status = $data->status;

        $data->status = ($status == 1) ? 0 : 1;
        $data->save();
    }

    public function destroy($id)
    {
        $data = AccountBank::find($id);
        $data->delete();
    }
}

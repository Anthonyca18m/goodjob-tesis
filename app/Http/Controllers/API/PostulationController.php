<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Activity;
use App\Models\Postulation;
use Illuminate\Http\Request;

class PostulationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function store(Request $request)
    {
        $validate = $this->validate($request, [
            'user_id' => ['required', 'exists:users,id'],
            'activity_id' => ['required'],
        ]);

        if($validate){
            $verify = Postulation::where('user_id', $request->user_id)->where('activity_id', $request->activity_id)->first();

            if($verify == ''){
                Postulation::create([
                    'activity_id' => $request->activity_id,
                    'user_id' => $request->user_id,
                    'status' => 2
                ]);
            } else {
                return 1;
            }
        }
    }

    public function destroy($id)
    {
        $data = Postulation::find($id);
        $data->delete();
    }

    public function accept(Request $request)
    {
        $data = Postulation::find($request->id);
        $activity = Activity::find($data->activity_id);
        $nro_postulant = Postulation::where('activity_id', $data->activity_id)->where('status', 1)->count();

        if($activity->person_required <= $nro_postulant)
        {
            $data->status = 1;
            $data->save();
        }
    }


    public function denied(Request $request)
    {
        $data = Postulation::find($request->id);

        $data->status = 0;
        $data->save();
    }
}

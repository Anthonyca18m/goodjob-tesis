<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Activity;
use App\Models\Postulation;
use App\Models\Resource;
use App\Models\Reward;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class ActivityController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function index()
    {
        return Activity::with(['postulants', 'district', 'reward'])->get();
    }


    public function show($activity_id)
    {
        $activity =  Activity::with('reward')->find($activity_id);

        if(!is_null($activity)){

            return $activity;
        } else {
            return response(['message' => 'La actividad no existe'], 422);
        }
    }

    public function store(Request $request)
    {
        $validate = $this->validate($request, [
            'user_id' => 'required|exists:users,id',
            'title' => 'required|string|unique:activities,title',
            'description' => 'required|string',
            'image' => 'required|max:1024',
            'date_init' => 'required|after_or_equal:tomorrow',
            'date_end' => 'required|after_or_equal:date_init',
            'nro_person' => 'required|integer',
            'district' => 'required',
            'address' => 'required',
            'url_address' => 'required|url',
            'amount' => 'required|numeric|between:10,999999',

        ]);

        if($validate){

            DB::transaction(function () use($request) {

                $title = preg_replace('([^A-Za-z0-9])', ' ', $request->title);

                $activity = Activity::create([
                    'user_id' => $request->user_id,
                    'title' => $title,
                    'description' => $request->description,
                    'date_init' => $request->date_init,
                    'date_end' => $request->date_end,
                    'person_required' => $request->nro_person,
                    'address' => $request->address,
                    'address_reference' => $request->url_address,
                    'ubigeo' => $request->district,
                    'country' => 'PE',
                    'status' => 1
                ]);

                $file = time().'_activity_'.$request->file('image')->getClientOriginalName();
                $path = $request->file('image')->storeAs('activities/', $file, 'public');

                $activity->resource()->create([
                    'type_resource_id' => 2,
                    'resource' => getenv('APP_URL') . '/storage/activities/' . $file,
                ]);

                $activity->reward()->create([
                    'type_reward_id' => 1,
                    'reward' => $request->amount
                ]);

                $tags = explode(',', $request->tags);
                for ($i=0; $i < count($tags); $i++) {

                    $activity->tags()->create([
                        'name' => $tags[$i]
                    ]);
                }

            });
        }
    }

    public function storeImg(Request $request)
    {
        $validate = $this->validate($request, [
            'id' => 'required|exists:activities,id',
            'image' => 'required|max:2048'
        ]);

        if($validate){

            $data = Activity::find($request->id);

            $file = time().'_activity_'.$request->file('image')->getClientOriginalName();
            $path = $request->file('image')->storeAs('activities/', $file, 'public');

            $data->resource()->create([
                'type_resource_id' => 3,
                'resource' => getenv('APP_URL') . '/storage/activities/' . $file,
            ]);
        }
    }

    public function getImgs($activity_id)
    {
        return Activity::with(['resource' => function ($query) {
            $query->where('type_resource_id', 3);
        }])->find($activity_id);
    }

    public function destroyImg($id)
    {
        $data = Resource::where('id', $id)->first();
        $data->delete();
    }

    public function update(Request $request)
    {
        $validate = $this->validate($request, [
            'id' => 'required|exists:activities,id',
            'title' => ['required', 'string', Rule::unique('activities', 'title')->ignore($request->id, 'id')],
            'description' => 'required|string',
            'date_init' => 'required',
            'date_end' => 'required|after_or_equal:date_init',
            'person_required' => 'required|integer',
            'district' => 'required',
            'address' => 'required',
            'reference_address' => 'required|url',
            'reward' => 'required|numeric|between:10,999999',

        ]);

        if($validate){

            DB::transaction(function ()  use($request) {

                $activity = Activity::with('reward')->find($request->id);

                $title = preg_replace('([^A-Za-z0-9])', ' ', $request->title);

                $activity->title = $title;
                $activity->description = $request->description;
                $activity->date_init = $request->date_init;
                $activity->date_end = $request->date_end;
                $activity->ubigeo = $request->district;
                $activity->address = $request->address;
                $activity->address_reference = $request->reference_address;
                $activity->save();

                $reward = Reward::find($activity->reward->id);
                $reward->reward = $request->reward;
                $reward->save();
            });
        }
    }

    public function destroy($activity_id)
    {
        $activity = Activity::find($activity_id);
        $init = strtotime($activity->date_init);
        $init = date('Y-m-d', $init);

        if(strtotime($init) > strtotime(date('Y-m-d'))){

            $activity->delete();
            $activity->postulants()->delete();
            $activity->resource()->delete();
            $activity->tags()->delete();
            $activity->likes()->delete();
            $activity->comments()->delete();
            $activity->reward()->delete();

        } else {

            return response(['message' => 'Solo se puede eliminar si la actividad no ha sido comenzado.'], 422);
        }



    }

    public function getPostulants(Request $request, $activity_id){

        return Postulation::with('profile')->where('activity_id', $activity_id)->where('status', $request->status)->get();
    }

}

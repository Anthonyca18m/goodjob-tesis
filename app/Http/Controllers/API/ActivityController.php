<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Activity;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ActivityController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth:api');
    }

    public function store(Request $request)
    {
        $validate = $this->validate($request, [
            'user_id' => 'required|exists:users,id',
            'title' => 'required|string',
            'description' => 'required|string',
            'image' => 'required|max:1024',
            'date_init' => 'required|after_or_equal:tomorrow',
            'date_end' => 'required|after_or_equal:date_init',
            'nro_person' => 'required|integer',
            'district' => 'required',
            'address' => 'required',
            'url_address' => 'required|url',

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

                $tags = explode(',', $request->tags);
                for ($i=0; $i < count($tags); $i++) {

                    $activity->tags()->create([
                        'name' => $tags[$i]
                    ]);
                }

            });
        }
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function index(Request $request)
    {
        $activities = Activity::with('district')->with(['resource' => function ($query) {
            $query->where('type_resource_id', 2);
        }])->where('status', 1)->orderByDesc('created_at')->paginate(18);

        if(isset($request->search)){
            
            $clear = array("'", '"');
            $search = str_replace($clear, "", $request->search);
            $activities = Activity::with('district')->with(['resource' => function ($query) {
                $query->where('type_resource_id', 2);
            }])
            ->whereRaw('title like "%'.$search.'%"')
            ->where('status', 1)->orderByDesc('created_at')->paginate(18);
        }

        return view('welcome')
            ->with('activities', $activities)
            ;
    }

    public function activity($name)
    {
        $activity = Activity::with('district')->with(['resource' => function ($query) {
            $query->where('type_resource_id', 2);
        }])
        ->where('title', $name)
        ->where('status', 1)
        ->orderByDesc('created_at')
        ->first();

        return view('activity')
            ->with('activity', $activity);
    }
}

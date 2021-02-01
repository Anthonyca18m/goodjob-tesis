<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use App\Models\Postulation;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function index(Request $request)
    {
        $activities = Activity::with('district')
        ->with(['resource' => function ($query) {
            $query->where('type_resource_id', 2);
        }])
        ->withCount(['likes' => function ($query) {
            $query->where('comment', null);
        }])
        ->withCount(['comments' => function ($query) {
            $query->where('comment', '!=', '');
        }])
        ->where('status', 1)->orderByDesc('created_at')->paginate(18);


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
        $activity = Activity::with('district')
        ->with(['resource' => function ($query) {
            $query->where('type_resource_id', 2);
        }])
        ->with(['images' => function ($query) {
            $query->where('type_resource_id', 3);
        }])
        ->with(['videos' => function ($query) {
            $query->where('type_resource_id', 4);
        }])
        ->withCount(['likes' => function ($query) {
            $query->where('comment', null);
        }])
        ->withCount(['comments' => function ($query) {
            $query->where('comment', '!=', '');
        }])
        ->with('tags')
        ->with('reward')
        ->where('title', $name)
        ->where('status', 1)
        ->orderByDesc('created_at')
        ->first();

        return view('activity')
            ->with('activity', $activity);
    }

    public function profile(Request $request)
    {
        $user = auth()->user();
        $postulations = Postulation::where('user_id', $user->id)->orderByDesc('updated_at')->get();
        $id_postulations = [];
        foreach ($postulations as $rs) {
            array_push($id_postulations, $rs->activity_id);
        }

        $postulations = Activity::with(['resource' => function ($query) {
            $query->where('type_resource_id', 2);
        }])
        ->with(['postulants' => function ($query) use($user) {
            $query->where('user_id', $user->id);
        }])
        ->whereIn('id', $id_postulations)->paginate(5);

        $my_activities = [];

        if($request->q == 'activities'){

            $my_activities = Activity::with(['resource' => function ($query) {
                $query->where('type_resource_id', 2);
            }])
            ->where('user_id', $user->id)
            ->orderByDesc('activities.created_at')
            ->paginate(5);
        }

        return view('profile')
            ->with('postulations', $postulations)
            ->with('my_activities', $my_activities)
            ;
    }
}

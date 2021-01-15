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

    public function profile()
    {
        $user = auth()->user();
        $postulations = Postulation::where('user_id', $user->id)->get();

        return view('profile')
            ->with('postulations', $postulations)
            ;
    }
}

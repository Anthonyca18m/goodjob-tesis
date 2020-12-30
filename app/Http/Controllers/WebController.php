<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use Illuminate\Http\Request;

class WebController extends Controller
{
    public function index()
    {
        $activities = Activity::with('district')->with(['resource' => function ($query) {
            $query->where('type_resource_id', 2);
        }])->where('status', 1)->orderByDesc('created_at')->paginate(18);


        return view('welcome')
            ->with('activities', $activities)
            ;
    }
}

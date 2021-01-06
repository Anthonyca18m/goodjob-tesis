<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\PuntationComment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    //


    public function store(Request $request)
    {
        $validate = $this->validate($request, [
            'user_id' => ['required', 'exists:users,id'],
            'comment' => ['required'],
        ]);

        if($validate){
            PuntationComment::create([
                'user_id' => $request->user_id,
                'puntationable_type' => 'App\Models\Activity',
                'puntationable_id' => $request->activity_id,
                'puntation' => null,
                'comment' => $request->comment,
                'status' => 1
            ]);
        }
    }

    public function getComments(Request $request)
    {
        return PuntationComment::with('user')->where('puntationable_id', $request->activity_id)
            ->where('puntationable_type', 'App\Models\Activity')
            ->where('status', 1)
            ->limit($request->limit)
            ->get();
    }
}

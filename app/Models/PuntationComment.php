<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class PuntationComment extends Model
{
    protected $fillable = [
        'puntation',
        'comment',
        'status'
    ];

    public function puntationable()
    {
        return $this->morphTo();
    }
}

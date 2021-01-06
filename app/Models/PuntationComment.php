<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class PuntationComment extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'user_id',
        'puntationable_type',
        'puntationable_id',
        'puntation',
        'comment',
        'status'
    ];

    public function puntationable()
    {
        return $this->morphTo();
    }

    public function user()
    {
        return $this->hasOne(Profile::class, 'user_id', 'user_id');
    }

}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Reward extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'type_reward_id',
        'reward',
    ];

    public function rewardable()
    {
        return $this->morphTo();
    }
}


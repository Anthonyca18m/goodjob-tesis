<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class AccountBank extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'bank_id',
        'user_id',
        'number',
        'number_inter',
        'status'
    ];

    public function bank()
    {
        return $this->hasOne(Bank::class);
    }
}


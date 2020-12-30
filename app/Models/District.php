<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class District extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'name',
        'province_id'
    ];
}

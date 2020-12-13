<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Resource extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'type_resource_id'
    ];

    public function resourcegable()
    {
        return $this->morphTo();
    }
}

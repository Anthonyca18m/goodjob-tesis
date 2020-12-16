<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Resource extends Model
{
    use Notifiable, HasApiTokens;

    protected $table = 'resourcegables';

    protected $fillable = [
        'type_resource_id',
        'resource',
        'op1',
        'op2',
        'op3',
        'op4',
        'op5'
    ];

    public function resourcegable()
    {
        return $this->morphTo();
    }
}

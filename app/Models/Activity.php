<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Activity extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'user_id',
        'title',
        'description',
        'date_init',
        'date_end',
        'person_required',
        'address',
        'address_reference',
        'ubigeo',
        'country',
        'status',
    ];


    public function user()
    {
        return $this->belongsTo(App\Models\User::class);
    }
    public function postulants()
    {
        return $this->hasMany(Postulation::class);
    }
    public function resource()
    {
        return $this->morphMany(Resource::class, 'resourcegable');
    }
    public function district()
    {
        return $this->hasOne(District::class, 'id', 'ubigeo');
    }

    public function tags()
    {
        return $this->morphMany(Tag::class, 'taggable');
    }

    public function likes()
    {
        return $this->morphMany(PuntationComment::class, 'puntationable');
    }
    public function comments()
    {
        return $this->morphMany(PuntationComment::class, 'puntationable');
    }

    public function reward()
    {
        return $this->morphOne(Reward::class, 'rewardable');
    }
}

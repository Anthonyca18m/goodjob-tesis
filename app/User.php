<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'account_type_id',
        'email',
        'password',
        'register',
        'register_uid',
        'status'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function accountType()
    {
        return $this->hasOne(Models\AccountType::class);
    }
    public function profile()
    {
        return $this->hasOne(Models\Profile::class);
    }
    public function image()
    {
        return $this->morphOne(Models\Resource::class, 'resourcegable');
    }
    public function accountBanks()
    {
        return $this->hasMany(Models\AcoountBank::class);
    }


    public function postulations()
    {
        return $this->hasMany(Models\Postulation::class);
    }
    public function activities()
    {
        return $this->hasMany(Models\Activity::class);
    }
}

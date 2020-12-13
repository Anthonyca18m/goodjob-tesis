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
        'name',
        'account_type_id',
        'email',
        'password',
        'register',
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
        return $this->hasOne(App\Models\AccountType::class);
    }
    public function profile()
    {
        return $this->hasOne(App\Models\Profile::class);
    }
    public function image()
    {
        return $this->hasOne(App\Models\Resource::class);
    }
    public function accountBanks()
    {
        return $this->hasMany(App\Models\AcoountBank::class);
    }


    public function postulations()
    {
        return $this->hasMany(App\Models\Postulation::class);
    }
    public function activities()
    {
        return $this->hasMany(App\Models\Activity::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Postulation extends Model
{
    use Notifiable, HasApiTokens;

    protected $fillable = [
        'activity_id',
        'user_id',
        'status'
    ];

    public function activity()
    {
        return $this->hasOne(Activity::class, 'id', 'activity_id');
    }
    
}

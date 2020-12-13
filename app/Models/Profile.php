<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Profile extends Model
{
    use Notifiable, HasApiTokens;
    
    protected $fillable = [
        'user_id',
        'name',
        'bussiness_name',
        'trade_name',
        'birth_date',
        'gener',
        'document',
        'ruc',
        'type_document_id',
        'phone',
        'address',
        'address_reference',
        'ubigeo',
        'country',
        'email_opt',
        'facebook',
        'twitter',
        'github',
        'linkedin'
    ];
}

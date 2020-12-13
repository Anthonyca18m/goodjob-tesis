<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Product extends Model
{
    use Notifiable, HasApiTokens;
    
    protected $fillable = [
        'name',
        'stock',
        'price',
        'status'
    ];
}
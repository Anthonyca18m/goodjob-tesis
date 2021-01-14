<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class Tag extends Model
{
    use Notifiable, HasApiTokens;

    protected $table = 'tags';

    public $timestamps = false;

    protected $fillable = [
        'taggable_type',
        'taggable_id',
        'name'
    ];

    public function taggable()
    {
        return $this->morphTo();
    }
}

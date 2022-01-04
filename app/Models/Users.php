<?php

namespace App\Models;

use Illuminate\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;

class Users extends Model 
{
    public $timestamps = false;
	protected $primaryKey = 'id_user';
    protected $fillable = [
        // 'id_user',
        'nama_user',
        'username',
        'email',
        'password'
    ];
}

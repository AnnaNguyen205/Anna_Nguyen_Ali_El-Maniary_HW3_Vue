<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['games.id','title','genre','release_year','description','game_img','name'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}

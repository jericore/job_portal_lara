<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['title','description'];

    public function users()
    {
      return $this->belongsTo('App\User','user_id');
    }
}

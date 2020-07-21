<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = ['title','description'];

    public function users()
    {
      return $this->belongsTo('App\User','user_id'); //jadi ini relasi kalo di table post ada user_id yang foreign key nya dari table user
    }

    public function tagg()
    {
      return $this->belongsToMany('App\Tag');
    }

    public function comments()
    {
      return $this->morphMany('App\Comment', 'commentable');
    }

}

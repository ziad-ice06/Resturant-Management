<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Buy extends Model
{


    public $fillable = ['itemid','uid','rate','amount','qty'];

	protected $table = 'buy';
}

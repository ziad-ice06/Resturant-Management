<?php

namespace App;


use Illuminate\Database\Eloquent\Model;


class Sale extends Model
{


    public $fillable = ['itemid','uid','rate','qty'];

	protected $table = 'sale';
}

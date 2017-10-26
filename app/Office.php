<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Office extends Model
{
    public $table = "Office";
    
    protected $fillable = [ 'id','Name','Address','Description' ];
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WorkDays extends Model
{
    public $table = "WorkDays";
    protected $fillable = [ 'StaffID','Date','Time' ];
}

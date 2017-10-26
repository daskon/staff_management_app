<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    protected $fillable = [ 'DeptID', 'OfficeID', 'FirstName','LastName','DOB','IsWorking' ];
}

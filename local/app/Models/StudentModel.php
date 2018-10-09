<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StudentModel extends Model
{
    protected $table = 'uec_student';
    protected $guarded=[];

    public function Area() {
    	return $this->hasMany('App\Models\danhmuckhac\AreaModel', 'area_id');
    }

    public function User() {
    	return $this->hasOne('App\Models\UserModel', 'student_id');
    }
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comments_model extends Model
{
    protected $table='comments';
    protected $primaryKey='id';
    protected $fillable=['title','description','products_id','user_id','created_at','updated_at'];

    public function product(){
        return $this->belongsTo(Products_model::class,'products_id','id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id','id');
    }
}

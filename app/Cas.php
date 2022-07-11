<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cas extends Model
{

    protected $attributes = [
        'status' => 'New',
        

    ];

    protected $fillable = ['nama_issuer', 'bin', 'reg_ca', 'status', 'added_by', 'modified_by', 'waktu_assign_project'];

    public $timestamps = false;
}

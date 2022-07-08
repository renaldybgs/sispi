<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mitra extends Model
{

    protected $attributes = [
        'id_pstat' => 1,
        'nama_issuer' => '',

    ];

    protected $fillable = ['bin', 'reg_ca', 'added_by', 'modified_by', 'waktu_assign_project'];

    public $timestamps = false;
}

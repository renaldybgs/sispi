<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Ipkc extends Model
{
    protected $attributes = [
    	'id_pstat' => 1,
    	'no_ipkc' => '',
        'notes_project' => '',

    ];

    protected $fillable = ['id_ca', 'bin', 'jenis_ipkc', 'waktu_assign_project'];

    public $timestamps = false;
}

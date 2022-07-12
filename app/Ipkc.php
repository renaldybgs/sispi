<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Ipkc extends Model
{
    protected $attributes = [
    	'id_pstat' => 1,
        'notes_project' => '',

    ];

    protected $fillable = ['id_ca', 'bin', 'no_ipkc', 'jenis_ipkc', 'waktu_assign_project'];

    public $timestamps = false;
}

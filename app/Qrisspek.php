<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Qrisspek extends Model
{
    protected $attributes = [
    	'id_pstat' => 1,
    	'no_formulir' => '',
    	'no_spek' => '',
        'notes_project' => '',

    ];

    protected $fillable = ['id_product', 'id_mitra', 'nama_prod', 'no_formulir', 'no_spek', 'spek_qris', 'notes_project', 'waktu_assign_project'];

    public $timestamps = false;
}

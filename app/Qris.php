<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Qris extends Model
{
    protected $attributes = [
    	'id_pstat' => 1,
    	'jenis_qrisbi' => '',
    	'jenis_qrisbi' => '',
        'notes_project' => '',

    ];

    protected $fillable = ['id_product', 'id_mitra', 'tgl_skenario', 'surat_rekomendasi', 'no_rekomendasi', 'jenis_qrisbi', 'ijin_qrisbi', 'tgl_ijinbi'];

    public $timestamps = false;
}
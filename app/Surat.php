<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Surat extends Model
{
    protected $attributes = [
        'no_surat' => '',
        'no_unik' => '',
        'perihal' => '',
        'notes_surat' => '',

    ];

    protected $fillable = ['id_mitra',  'no_surat', 'no_unik', 'perihal', 'notes_surat', 'added_by', 'modified_by', 'waktu_assign_surat'];

    public $timestamps = false;
}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mitra extends Model
{
    protected $fillable = ['nama_mitra', 'jenis', 'keanggotaan', 'alamat', 'nama_pic', 'email', 'data_agreement', 'reg_numb', 'added_by', 'modified_by'];

    public $timestamps = false;
}

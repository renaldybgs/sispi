<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Project extends Model
{
    protected $attributes = [
    	'id_pstat' => 1,
    	'number_special' => '',
    	'nama_prod' => '',
    	'security_lab' => '',
    	'lab' => '',
        'notes_project' => '',
        'identification_num' => '',
        'certification_no' => '',

    ];

    protected $fillable = ['waktu_assign_project', 'id_product', 'id_mitra', 'nama_prod', 'number_special', 'typereg_numb', 'security_lab', 'lab', 'pif', 'ctf', 'report_lab', 'complience_req', 'loa_new', 'loa_sent', 'notes_project', 'identification_num', 'certification_no'];

    public $timestamps = false;
}

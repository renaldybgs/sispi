<?php

namespace App\Http\Controllers;

use App\Surat;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Controller_EngineerAddSurats extends Controller
{
    public function openPage(){             //buka halaman Manager - Assign
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $mitras = DB::select("select * from mitras order by nama_mitra asc");           //ngambil data semua mitra
        $users = $this->getUser();                                                      //ngambil data engineer dan adminxengineer
        
        return view('Pages.Engineer.View_EngineerAddProjectsSurat', compact('userLevel', 'mitras', 'users'));
    }

    public function storeNew(Request $request){                         //tambah data projek baru
        $this->authorize('isEngineer', auth()->user());

        $request->validate([                                            //validasi data input projek
            'id_mitra' => 'required',
            'waktu_assign_surat' => 'required',
            'perihal' => 'required',
        ],
        $message = [
            
            'id_mitra.required' => 'Mohon pilih nama mitra',
            'waktu_assign_surat.required' => 'Mohon isi Issued Date',
            'perihal.required' => 'Mohon isi Perihal',

        ]);

        $added_by = Auth::user()->inisial_user;

        //No Urutan
        $suratnew = new Surat();

        $tanggal = date('d');
        $bulan = date('m');
        $tahun = date('Y');
        $lastUrutan = $suratnew->orderBy('id', 'desc')->first();
        $lastTahun = $lastUrutan ? substr($lastUrutan->no_surat, 5, 2) : null;
        $newUrutanNumber = ($lastTahun == substr($tahun, -0)) ? intval(substr($lastUrutan->no_surat, -3)) + 1 : 1;
        $newUrutanFormatted = str_pad($newUrutanNumber, 3, '0', STR_PAD_LEFT);
        //Sek.ASPI/SR/-Tahun -TanggalBulanUrutanformkeseluruhan
        $nomorUrutan = 'Sek.ASPI/SR/' . $newUrutanFormatted . '/'. $bulan .'/'. substr($tahun, -0);

        //No Unik
        $randno1 = random_int(10, 99);
        $randno2 = random_int(100, 999);
        $randno3 = random_int(0, 9);
        $randno4 = random_int(10, 99);
        $newrandom = $randno1. '.'.$randno2. '.'.$randno3. '.'.$randno4;
        

        $newprojectsurat = Surat::create([ 
            'id_mitra' => $request->id_mitra,   
            'no_unik'  => $newrandom,                   
            'no_surat' => $nomorUrutan,
            'perihal' => $request->perihal,
            'waktu_assign_surat' => $request->waktu_assign_surat,
            'added_by' => $added_by,
        ]);

        return redirect('/engineer/surat')->with('success','No Surat berhasil di tambahkan');
    }

    public function getUser(){                                      //ngambil data user engineer dan adminxengineer
        return User::select(DB::raw('*'))->whereIn('id_ulevel', [1, 2, 4, 5])->get();
    }

    public function getSuratById($id){                                        //ngamabil data projek berdasarkan idnya
        return Surat::where('id', $id)->firstOrFail();
    }
}

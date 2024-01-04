<?php

namespace App\Http\Controllers;

use DataTables;
use App\User;
use App\Surat;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class Controller_EngineerYourSurat extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());
        
        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerPenomoranSurat', compact('userLevel'));
    }

    public function editPenomoran($id){                                               //nyiapin form Edit Progress
        $this->authorize('isEngineer', auth()->user());
        
        $surat = $this->getSuratById($id);                                  //ngambil data projek yg mau diubah progressnya
        $perihal = $surat->perihal;                                    
        $notes = $surat->notes_surat;                                       //ngambil notes

        return view('Layouts.FormProgresSurat', compact('surat', 'perihal', 'notes'));  //buka formnya dengan data2 yg udh disiapin sebelumnya
    }

    public function updatePenomoran(Request $request, $id){                           //update data setelah nginput di form
        $this->authorize('isEngineer', auth()->user());
        
        // $request->validate([                                                    //validasi input
        //     'progress_sit' => 'required|lte:100|regex:/^[0-9.]*$/',
        //     'progress_uat' => 'required|lte:100|regex:/^[0-9.]*$/',
        // ],
        // $message = [
        //     'progress_sit.required' => ' Mohon isi Progress SIT',
        //       'progress_sit.lte' => ' Progress SIT maks. 100',
        //       'progress_sit.regex' => ' Progress SIT hanya berisi angka',
        //     'progress_uat.required' => ' Mohon isi Progress UAT',
        //       'progress_uat.lte' => ' Progress UAT maks. 100',
        //       'progress_uat.regex' => ' Progress UAT hanya berisi angka',
        // ]);

        $modified_by = Auth::user()->inisial_user;    
        
        $surat = $this->getSuratById($id);  
                                  //cari projek yg datanya mau diubah
        $surat->perihal = $request->perihal;                      
        $surat->notes_surat = $request->notes_surat;  
        $surat->modified_by = $modified_by;                      
        $surat->last_updated = Carbon::now()->toDateTimeString();
        $surat->save();                                                       //simpan perubahan
    }

    public function dataTable(){                                                //generate table di halaman Engineer - Project Own Going (Own Project)
        $userId = auth()->id();                                    //ambil id user yg lagi login
        $surat = $this->getSuratData($userId);              //ambil data2 projek user yg lagi login
        return DataTables::of($surat)                                         //bikin table berdasarkan data2 yg udh diambil 

        // $surat = Surat::query();                                    //mengambil semua data
        // return DataTables::of($surat) 
            ->addColumn('action', function($surat){                           //tambah kolom action
                return view('Layouts.ActionSurat',[                           //menggunakan layout di file ActionProject
                    'surat'=> $surat,           
                    // 'url_pic' => route('pic.edit', $project->id),               //melempar link untuk tombol edit pic beserta id projek yg mau diubah
                    'url_progresssurat' => route('progresssurat.edit', $surat->id),     //melempar link untuk tombol edit progress beserta id projek yg mau diubah
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }

    public function getSuratById($id){                                        
        return Surat::where('id', $id)->firstOrFail();
    }

    public function getSuratData($id){                                    
        return DB::table('surats')
        ->select(DB::raw('surats.id, mitras.nama_mitra, surats.no_surat, surats.no_unik, surats.perihal, surats.notes_surat, surats.added_by, Date(surats.waktu_assign_surat) as tanggal_surat, date(surats.last_updated) as last_updated'))
        ->leftjoin('mitras', 'surats.id_mitra', '=', 'mitras.id')
        
        ->orderBy('tanggal_surat', 'desc')
        ->get();
    }
    
}
 
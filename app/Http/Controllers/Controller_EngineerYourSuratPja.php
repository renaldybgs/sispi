<?php

namespace App\Http\Controllers;

use DataTables;
use App\User;
use App\Suratpja;
use App\Projects_Stat;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;


class Controller_EngineerYourSuratPja extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());
        
        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerPenomoranSuratPja', compact('userLevel'));
    }

    public function editPenomoran($id){                                               //nyiapin form Edit Progress
        $this->authorize('isEngineer', auth()->user());
        
        $surat = $this->getSuratById($id);                                  //ngambil data projek yg mau diubah progressnya
        $perihal = $surat->perihal;                                    
        $notes = $surat->notes_surat;                                       //ngambil notes
        $no_unik = $surat->no_unik;
        $no_surat = $surat->no_surat;

        

        return view('Layouts.FormProgresSuratPja', compact('surat', 'perihal', 'notes', 'no_unik', 'no_surat'));  //buka formnya dengan data2 yg udh disiapin sebelumnya
    }

    public function updatePenomoran(Request $request, $id){                           //update data setelah nginput di form
        $this->authorize('isEngineer', auth()->user());

        $modified_by = Auth::user()->inisial_user;    
        
        $surat = $this->getSuratById($id);  
                                  //cari projek yg datanya mau diubah
        $surat->perihal = $request->perihal;                      
        $surat->notes_surat = $request->notes_surat;
        $surat->no_unik = $request->no_unik;  
        $surat->no_surat = $request->no_surat; 
        $surat->modified_by = $modified_by;                   
        $surat->last_updated = Carbon::now()->toDateTimeString();
        $surat->save();                                                       //simpan perubahan

        return response()->json($surat);
    }

    public function changeStatus(Request $request){     //ganti status projek
        $this->authorize('isEngineer', auth()->user()); 
        
        $id = $request->input('id');                    //nyimpen id surat yg mau diubah statusnya
        $pstat = $request->input('pstat');              //nyimpen statusnya mau diganti jadi apa
        $surat = $this->getSuratById($id);          //ngambil projek Surat yg mau diganti statusnya

        $surat->id_pstat = $pstat;
        $surat->last_updated = Carbon::now()->toDateTimeString();

        $surat->save();                                                       //save perubahan data 
    }

    public function dataTable(){                                                //generate table di halaman Engineer - Project Own Going (Own Project)
        $userId = auth()->id();                                    //ambil id user yg lagi login
        $surat = $this->getSuratData($userId);              //ambil data2 projek user yg lagi login
        $pstat = Projects_Stat::whereIn('id', [19, 15, 16])->get();
        return DataTables::of($surat)                     //bikin table berdasarkan data2 yg udh diambil 

            ->addColumn('status', function($surat) use ($pstat){              //tambah kolom status buat ganti status
                return view('Layouts.StatusSuratPja',[
                    'surat'=> $surat,
                    'pstat'=> $pstat
                ]);
            })

            ->addColumn('action', function($surat){                           //tambah kolom action
                return view('Layouts.ActionSuratPja',[                           //menggunakan layout di file ActionProject
                    'surat'=> $surat,           
                    // 'url_pic' => route('pic.edit', $project->id),               //melempar link untuk tombol edit pic beserta id projek yg mau diubah
                    'url_progresssurat' => route('progresssuratpja.edit', $surat->id),     //melempar link untuk tombol edit progress beserta id projek yg mau diubah
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['status', 'action'])
            ->make(true);
    }

    public function getSuratById($id){                                        
        return Suratpja::where('id', $id)->firstOrFail();
    }

    public function getSuratData($id){                                    
        return DB::table('suratpjas')
        ->select(DB::raw('suratpjas.id, mitras.nama_mitra, suratpjas.no_surat, suratpjas.no_unik, suratpjas.no_surat, suratpjas.perihal, suratpjas.notes_surat, suratpjas.added_by, suratpjas.id_pstat, projects_stats.nama_pstat, Date(suratpjas.waktu_assign_surat) as tanggal_surat, date(suratpjas.last_updated) as last_updated'))
        ->leftjoin('mitras', 'suratpjas.id_mitra', '=', 'mitras.id')
        ->leftjoin('projects_stats', 'suratpjas.id_pstat', '=', 'projects_stats.id')
        ->orderBy('tanggal_surat', 'desc')
        ->orderBy('suratpjas.no_surat', 'desc')
        ->get();
    }
    
}
 
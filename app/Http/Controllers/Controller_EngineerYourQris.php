<?php

namespace App\Http\Controllers;

use DataTables;
use App\User;
use App\Qris;
use App\Projects_Stat;
use App\Projects_Handover;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerYourQris extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());
        
        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerYourQris', compact('userLevel'));
    }

    public function changeStatus(Request $request){     //ganti status projek
        $this->authorize('isEngineer', auth()->user()); 
        
        $id = $request->input('id');                    //nyimpen id projek yg mau diubah statusnya
        $pstat = $request->input('pstat');              //nyimpen statusnya mau diganti jadi apa
        $qris = $this->getQrisById($id);          //ngambil projek Qris yg mau diganti statusnya

        // if($project->id_pketerangan == 2 || $project->id_pketerangan == 5){
        //     if($project->stats_temp == 3 && $pstat == 5){
        //         return;
        //     }
        // }

        // $project->id_pstat = $pstat;

        if($pstat == 20){                      //kalo statnys mau diganti
            $qris->id_pstat = 20;
            $qris->surat_rekomendasi = Carbon::now()->toDateTimeString();  
        }

        else {
            $qris->id_pstat = $pstat;
            $qris->last_updated = Carbon::now()->toDateTimeString();
        }

        $qris->save();                                                       //save perubahan data 
    }

    public function editPBN($id){                                               //nyiapin form Edit Progress
        $this->authorize('isEngineer', auth()->user());
        
        $qris = $this->getQrisById($id);                                  //ngambil data projek yg mau diubah progressnya
        $no_rekomendasi = $qris->no_rekomendasi;                                         //ngambil lab
        $jenis_qrisbi = $qris->jenis_qrisbi;                       //ngambil security_lab
        $notes = $qris->notes_project;                                       //ngambil notes
        $ijin_qrisbi = $qris->ijin_qrisbi;
        $tgl_ijinbi = $qris->tgl_ijinbi;

        return view('Layouts.FormProgresQris', compact('qris', 'no_rekomendasi', 'jenis_qrisbi', 'notes', 'ijin_qrisbi', 'tgl_ijinbi'));  //buka formnya dengan data2 yg udh disiapin sebelumnya
    }

        public function updatePBN(Request $request, $id){                           //update data setelah nginput di form
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
        
        $qris = $this->getQrisById($id);                            //cari projek yg datanya mau diubah

        $qris->no_rekomendasi = $request->no_rekomendasi;                      
        $qris->jenis_qrisbi = $request->jenis_qrisbi;                       
        $qris->notes_project = $request->notes_project;                      
        $qris->ijin_qrisbi = $request->ijin_qrisbi;
        $qris->tgl_ijinbi = $request->tgl_ijinbi;
        $qris->last_updated = Carbon::now()->toDateTimeString();

        $qris->save();                                                       //simpan perubahan
    }

    public function notes($id){
        $qris = $this->getQrisById($id);

        return view('Layouts.FormKeteranganProject', compact('qris'));
    }

    public function dataTable(){                                                //generate table di halaman Engineer - Project Own Going (Own Project)
        $userId = auth()->id();                                                 //ambil id user yg lagi login
        $qris = $this->getQrisData($userId);                              //ambil data2 projek user yg lagi login
        $pstat = Projects_Stat::whereIn('id', [17, 11, 18, 19, 20, 15, 16])->get();                    //ambil list status kecuali reserve untuk ditampilin di dropdown status
        return DataTables::of($qris)                                         //bikin table berdasarkan data2 yg udh diambil
            ->addColumn('status', function($qris) use ($pstat){              //tambah kolom status buat ganti status
                return view('Layouts.StatusQris',[
                    'qris'=> $qris,
                    'pstat'=> $pstat
                ]);
            })
            
            ->addColumn('action', function($qris){                           //tambah kolom action
                return view('Layouts.ActionQris',[                           //menggunakan layout di file ActionProject
                    'qris'=> $qris,           
                    // 'url_pic' => route('pic.edit', $project->id),               //melempar link untuk tombol edit pic beserta id projek yg mau diubah
                    'url_progressqris' => route('progressqris.edit', $qris->id),     //melempar link untuk tombol edit progress beserta id projek yg mau diubah
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['status', 'keterangan','action'])
            ->make(true);
    }

    public function getQrisData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
        return DB::table('qris')
        ->select(DB::raw('qris.id, qris.no_rekomendasi, qris.jenis_qrisbi, qris.ijin_qrisbi, qris.pketerangan_status, products.nama_product, qris.id_pstat, projects_stats.nama_pstat, mitras.nama_mitra, date(qris.waktu_assign_project) as tanggal_assign, date(qris.last_updated) as last_updated'))
        ->leftjoin('products', 'qris.id_product', '=', 'products.id')
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'qris.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('mitras', 'qris.id_mitra', '=', 'mitras.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereNotIn('id_pstat', [15,16])
        ->orderBy('tanggal_assign', 'desc')
        ->get();
    }

    public function getQrisById($id){                                        //ngamabil data projek berdasarkan idnya
        return Qris::where('id', $id)->firstOrFail();
    }

    public function setProjectDirectory($id){
        $project = $this->getProjectById($id);

        $year = strval(Carbon::now()->format('Y'));
        $nama_product = DB::table('products')
                  ->select(DB::raw('products.nama_product'))
                  ->where('id', $product)
                  ->get()
                  ->implode('nama_product'); 

        $inisial_user = DB::table('users')
                        ->select(DB::raw('users.inisial_user'))
                        ->where('id', $user)
                        ->get()
                        ->implode('inisial_user');

        $project->direktori_project = 'Documents/' . $year . '/' . $nama_product . '/' . '[' . $inisial_user . '] ' . $nproject;
    }
}

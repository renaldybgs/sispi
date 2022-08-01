<?php

namespace App\Http\Controllers;

use DataTables;
use App\User;
use App\Qrisspek;
use App\Projects_Stat;
use App\Projects_Handover;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class Controller_EngineerYourQrisspeks extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());
        
        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerYourQrisspeks', compact('userLevel'));
    }

    public function changeStatus(Request $request){     //ganti status projek
        $this->authorize('isEngineer', auth()->user()); 
        
        $id = $request->input('id');                    //nyimpen id projek yg mau diubah statusnya
        $pstat = $request->input('pstat');              //nyimpen statusnya mau diganti jadi apa
        $qrisspek = $this->getQrisspekById($id);          //ngambil projek Qris yg mau diganti statusnya

        // if($project->id_pketerangan == 2 || $project->id_pketerangan == 5){
        //     if($project->stats_temp == 3 && $pstat == 5){
        //         return;
        //     }
        // }

        // $project->id_pstat = $pstat;

        if($pstat == 20){                      //kalo statnys mau diganti
            $qrisspek->id_pstat = 20;
            $qrisspek->spek_qris = Carbon::now()->toDateTimeString();  
        }

        else {
            $qrisspek->id_pstat = $pstat;
            $qrisspek->last_updated = Carbon::now()->toDateTimeString();
        }

        $qrisspek->save();                                                       //save perubahan data 
    }

    public function editPBN($id){                                               //nyiapin form Edit Progress
        $this->authorize('isEngineer', auth()->user());
        
        $qrisspek = $this->getQrisspekById($id);                                  //ngambil data projek yg mau diubah progressnya
        $no_formulir = $qrisspek->no_formulir;                                         //ngambil lab
        $no_spek = $qrisspek->no_spek;                       //ngambil security_lab
        $notes = $qrisspek->notes_project;                                       //ngambil notes

        return view('Layouts.FormProgresQrisspek', compact('qrisspek', 'no_formulir', 'no_spek', 'notes'));  //buka formnya dengan data2 yg udh disiapin sebelumnya
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
        
        $qrisspek = $this->getQrisspekById($id);                            //cari projek yg datanya mau diubah

        $qrisspek->no_formulir = $request->no_formulir;                      
        $qrisspek->no_spek = $request->no_spek;                       
        $qrisspek->notes_project = $request->notes_project;                      
        $qrisspek->last_updated = Carbon::now()->toDateTimeString();

        $qrisspek->save();                                                       //simpan perubahan
    }

    public function notes($id){
        $qrisspek = $this->getQrisspekById($id);

        return view('Layouts.FormKeteranganProject', compact('qrisspek'));
    }

    public function dataTable(){                                                //generate table di halaman Engineer - Project Own Going (Own Project)
        $userId = auth()->id();                                                 //ambil id user yg lagi login
        $qrisspek = $this->getQrisspekData($userId);                              //ambil data2 projek user yg lagi login
        $pstat = Projects_Stat::whereIn('id', [17, 11, 21, 15, 16, 22, 19])->get();                    //ambil list status kecuali reserve untuk ditampilin di dropdown status
        return DataTables::of($qrisspek)                                         //bikin table berdasarkan data2 yg udh diambil
            ->addColumn('status', function($qrisspek) use ($pstat){              //tambah kolom status buat ganti status
                return view('Layouts.StatusQrisspek',[
                    'qrisspek'=> $qrisspek,
                    'pstat'=> $pstat
                ]);
            })
            
            ->addColumn('action', function($qrisspek){                           //tambah kolom action
                return view('Layouts.ActionQrisspek',[                           //menggunakan layout di file ActionProject
                    'qrisspek'=> $qrisspek,           
                    // 'url_pic' => route('pic.edit', $project->id),               //melempar link untuk tombol edit pic beserta id projek yg mau diubah
                    'url_progressqrisspek' => route('progressqrisspek.edit', $qrisspek->id),     //melempar link untuk tombol edit progress beserta id projek yg mau diubah
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['status', 'keterangan','action'])
            ->make(true);
    }

    public function getQrisspekData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
        return DB::table('qrisspeks')
        ->select(DB::raw('qrisspeks.id, qrisspeks.no_formulir, qrisspeks.no_spek, DATE(qrisspeks.spek_qris) as spek_qris, qrisspeks.pketerangan_status, products.nama_product, qrisspeks.id_pstat, projects_stats.nama_pstat, mitras.nama_mitra, date(qrisspeks.waktu_assign_project) as tanggal_assign, DATE(qrisspeks.last_updated) as last_updated'))
        ->leftjoin('products', 'qrisspeks.id_product', '=', 'products.id')
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'qrisspeks.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('mitras', 'qrisspeks.id_mitra', '=', 'mitras.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereNotIn('id_pstat', [15,16])
        ->orderBy('tanggal_assign', 'desc')
        ->get();
    }

    public function getQrisspekById($id){                                        //ngamabil data projek berdasarkan idnya
        return Qrisspek::where('id', $id)->firstOrFail();
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

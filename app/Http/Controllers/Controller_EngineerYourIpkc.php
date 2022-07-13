<?php

namespace App\Http\Controllers;

use DataTables;
use App\User;
use App\Ipkc;
use App\Projects_Stat;
use App\Projects_Handover;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class Controller_EngineerYourIpkc extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());
        
        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerYourIpkc', compact('userLevel'));
    }

    public function changeStatus(Request $request){     //ganti status projek
        $this->authorize('isEngineer', auth()->user()); 
        
        $id = $request->input('id');                    //nyimpen id projek yg mau diubah statusnya
        $pstat = $request->input('pstat');              //nyimpen statusnya mau diganti jadi apa
        $ipkc = $this->getIpkcById($id);          //ngambil projek Qris yg mau diganti statusnya

        // if($project->id_pketerangan == 2 || $project->id_pketerangan == 5){
        //     if($project->stats_temp == 3 && $pstat == 5){
        //         return;
        //     }
        // }

        $ipkc->id_pstat = $pstat;

        // if($pstat == 20){                      //kalo statnys mau diganti
        //     $qrisspek->id_pstat = 20;
        //     $qrisspek->spek_qris = Carbon::now()->toDateTimeString();  
        // }

        // else {
        //     $qrisspek->id_pstat = $pstat;
        // }

        $ipkc->save();                                                       //save perubahan data 
    }

    public function editPBN($id){                                               //nyiapin form Edit Progress
        $this->authorize('isEngineer', auth()->user());
        
        $ipkc = $this->getIpkcById($id);                                  //ngambil data projek yg mau diubah progressnya
        $no_ipkc = $ipkc->no_ipkc;                                         //ngambil lab
        $jenis_ipkc = $ipkc->jenis_ipkc; 
        $bin = $ipkc->bin;                      //ngambil security_lab
        $notes = $ipkc->notes_project;                                       //ngambil notes

        return view('Layouts.FormProgresIpkc', compact('ipkc', 'no_ipkc', 'jenis_ipkc', 'bin', 'notes'));  //buka formnya dengan data2 yg udh disiapin sebelumnya
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
        
        $ipkc = $this->getIpkcById($id);                            //cari projek yg datanya mau diubah

        $ipkc->no_ipkc = $request->no_ipkc;                      
        $ipkc->jenis_ipkc = $request->jenis_ipkc;                       
        $ipkc->notes_project = $request->notes_project;
        $ipkc->bin = $request->bin;                    

        $ipkc->save();                                                       //simpan perubahan
    }

    public function notes($id){
        $ipkc = $this->getIpkcById($id);

        return view('Layouts.FormKeteranganProject', compact('ipkc'));
    }

    public function dataTable(){                                                //generate table di halaman Engineer - Project Own Going (Own Project)
        $userId = auth()->id();                                                 //ambil id user yg lagi login
        $ipkc = $this->getIpkcData($userId);                              //ambil data2 projek user yg lagi login
        $pstat = Projects_Stat::whereIn('id', [23, 24, 25, 26, 15, 16])->get();                    //ambil list status kecuali reserve untuk ditampilin di dropdown status
        return DataTables::of($ipkc)                                         //bikin table berdasarkan data2 yg udh diambil
            ->addColumn('status', function($ipkc) use ($pstat){              //tambah kolom status buat ganti status
                return view('Layouts.StatusIpkc',[
                    'ipkc'=> $ipkc,
                    'pstat'=> $pstat
                ]);
            })
            
            ->addColumn('action', function($ipkc){                           //tambah kolom action
                return view('Layouts.ActionIpkc',[                           //menggunakan layout di file ActionProject
                    'ipkc'=> $ipkc,           
                    // 'url_pic' => route('pic.edit', $project->id),               //melempar link untuk tombol edit pic beserta id projek yg mau diubah
                    'url_progressipkc' => route('progressipkc.edit', $ipkc->id),     //melempar link untuk tombol edit progress beserta id projek yg mau diubah
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['status', 'keterangan','action'])
            ->make(true);
    }

    public function getIpkcData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
        return DB::table('ipkcs')
        ->select(DB::raw('ipkcs.id, ipkcs.no_ipkc, ipkcs.bin, ipkcs.jenis_ipkc, ipkcs.id_pstat, ipkcs.notes_project, projects_stats.nama_pstat, cas.nama_issuer, date(ipkcs.waktu_assign_project) as tanggal_assign'))
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'ipkcs.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('cas', 'ipkcs.id_ca', '=', 'cas.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereNotIn('id_pstat', [15,16])
        ->orderBy('tanggal_assign', 'desc')
        ->get();
    }

    public function getIpkcById($id){                                        //ngamabil data projek berdasarkan idnya
        return Ipkc::where('id', $id)->firstOrFail();
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

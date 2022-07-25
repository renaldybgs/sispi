<?php

namespace App\Http\Controllers;

use DataTables;
use App\User;
use App\Project;
use App\Projects_Stat;
use App\Projects_Handover;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerYourProjects extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());
        
        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerYourProjects', compact('userLevel'));
    }

    public function changeStatus(Request $request){     //ganti status projek
        $this->authorize('isEngineer', auth()->user()); 
        
        $id = $request->input('id');                    //nyimpen id projek yg mau diubah statusnya
        $pstat = $request->input('pstat');              //nyimpen statusnya mau diganti jadi apa
        $project = $this->getProjectById($id);          //ngambil projek yg mau diganti statusnya

        // if($project->id_pketerangan == 2 || $project->id_pketerangan == 5){
        //     if($project->stats_temp == 3 && $pstat == 5){
        //         return;
        //     }
        // }

        // $project->id_pstat = $pstat;

        if($pstat == 5){                      //kalo statnys mau diganti
            $project->id_pstat = 5;
            $project->pif = Carbon::now()->toDateTimeString();  
        }

        else if ($pstat == 6) {
            $project->id_pstat = 6;
            $project->ctf = Carbon::now()->toDateTimeString();
        }

        else if ($pstat == 8) {
            $project->id_pstat = 8;
            $project->report_lab = Carbon::now()->toDateTimeString();
        }

        else if ($pstat == 9) {
            $project->id_pstat = 9;
            $project->complience_req = Carbon::now()->toDateTimeString();
        }

        else if ($pstat == 12) {
            $project->id_pstat = 12;
            $project->loa_new = Carbon::now()->toDateTimeString();
        }

        else if ($pstat == 13) {
            $project->id_pstat = 13;
            $project->loa_sent = Carbon::now()->toDateTimeString();
        }

        else {
            $project->id_pstat = $pstat;
        }

        $project->save();                                                       //save perubahan data 
    }

    public function editPBN($id){                                               //nyiapin form Edit Progress
        $this->authorize('isEngineer', auth()->user());
        
        $project = $this->getProjectById($id);                                  //ngambil data projek yg mau diubah progressnya
        $lab = $project->lab;                                         //ngambil lab
        $security_lab = $project->security_lab;                       //ngambil security_lab
        $notes = $project->notes_project;                                       //ngambil notes
        $identification_num = $project->identification_num;
        $number_special = $project->number_special;
        $certification_no = $project->certification_no;

        return view('Layouts.FormProgress', compact('project', 'lab', 'security_lab', 'notes', 'identification_num', 'number_special', 'certification_no'));  //buka formnya dengan data2 yg udh disiapin sebelumnya
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
        
        $project = $this->getProjectById($id);                            //cari projek yg datanya mau diubah

        $project->lab = $request->lab;                      
        $project->security_lab = $request->security_lab;                       
        $project->notes_project = $request->notes_project;                      
        $project->identification_num = $request->identification_num; 
        $project->number_special = $request->number_special;
        $project->certification_no = $request->certification_no;
        $project->last_updated = Carbon::now()->toDateTimeString();

        $project->save();                                                       //simpan perubahan
    }

    // public function editBussinessPIC($id){                                      //edit pic bisnis  
    //     $this->authorize('isEngineer', auth()->user());        
    //     $project = $this->getProjectById($id);                                  //ngambil data projek yg mau ditempel di form Edit PIC Bisnis

    //     //ngambil data product buat ngisi dropdown
    //     if($project->id_pic_product == NULL){  //kalo pic blm ada ato placeholder, maka ambil data yg pake placeholder
    //         $listproduct = $this->getPICData($id, 0, 6);                        
    //     }
    //     else{
    //         $listproduct = $this->getPICData($id, 1, 6);
    //     }

    //     //ngambil data am buat ngisi dropdown
    //     if($project->id_pic_am == NULL){            //kalo pic blm ada ato placeholder, maka ambil data yg pake placeholder
    //         $listam = $this->getPICData($id, 0, 7); 
    //     }
    //     else{
    //         $listam = $this->getPICData($id, 1, 7);
    //     }

    //     //ngambil data pm buat ngisi dropdown
    //     if($project->id_pic_pm == NULL){            //kalo pic blm ada ato placeholder, maka ambil data yg pake placeholder
    //         $listpm = $this->getPICData($id, 0, 8); 
    //     }
    //     else{
    //         $listpm = $this->getPICData($id, 1, 8);
    //     }
        
    //     return view('Layouts.FormPIC', compact('project', 'listproduct', 'listam', 'listpm'));  //buka form edit pic dengan data2 yg sudah disiapkan
    // }

    // public function updateBussinessPIC(Request $request, $id){                  //update data pic bisnis
    //     $this->authorize('isEngineer', auth()->user());
        
    //     $project = $this->getProjectById($id);                                  //ambil projek yg mau diubah pic bisnisnya

    //     $project->id_pic_product = $request->id_pic_product;                    //ubah pic product
    //     $project->id_pic_am = $request->id_pic_am;                              //ubah pic am
    //     $project->id_pic_pm = $request->id_pic_pm;                              //ubah pic pm

    //     $project->save();                                                       //save perubahan
    // }

    public function notes($id){
        $project = $this->getProjectById($id);

        return view('Layouts.FormKeteranganProject', compact('project'));
    }

    public function dataTable(){                                                //generate table di halaman Engineer - Project Own Going (Own Project)
        $userId = auth()->id();                                                 //ambil id user yg lagi login
        $project = $this->getProjectData($userId);                              //ambil data2 projek user yg lagi login
        $pstat = Projects_Stat::whereNotIn('id', [1, 17, 18, 19, 21, 22, 20])->get();                    //ambil list status kecuali reserve untuk ditampilin di dropdown status
        return DataTables::of($project)                                         //bikin table berdasarkan data2 yg udh diambil
            ->addColumn('status', function($project) use ($pstat){              //tambah kolom status buat ganti status
                return view('Layouts.StatusProject',[
                    'project'=> $project,
                    'pstat'=> $pstat
                ]);
            })
            ->addColumn('keterangan', function($project){                       //tambah kolom keterangan
                return view('Layouts.KeteranganProject',[
                    'project'=> $project,
                    'url_notes' => route('keterangan.notes', $project->id)
                ]);
            })
            ->addColumn('action', function($project){                           //tambah kolom action
                return view('Layouts.ActionProject',[                           //menggunakan layout di file ActionProject
                    'project'=> $project,           
                    // 'url_pic' => route('pic.edit', $project->id),               //melempar link untuk tombol edit pic beserta id projek yg mau diubah
                    'url_progress' => route('progress.edit', $project->id),     //melempar link untuk tombol edit progress beserta id projek yg mau diubah
                    // 'url_upload' => route('upload.open', $project->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['status', 'keterangan','action'])
            ->make(true);
    }

    public function getProjectData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
    	return DB::table('projects')
    	->select(DB::raw('projects.id, projects.typereg_numb, projects.nama_prod, projects.lab, projects.pketerangan_status, projects.certification_no, projects.identification_num, products.nama_product, projects.id_pstat, projects_stats.nama_pstat, mitras.nama_mitra, date(projects.waktu_assign_project) as tanggal_assign'))
    	->leftjoin('products', 'projects.id_product', '=', 'products.id')
    	// ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'projects.id_pstat', '=', 'projects_stats.id')
    	->leftjoin('mitras', 'projects.id_mitra', '=', 'mitras.id')
    	// ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereNotIn('id_pstat', [15,16])
    	->orderBy('tanggal_assign', 'asc')
    	->get();
    }

    public function getProjectById($id){                                        //ngamabil data projek berdasarkan idnya
        return Project::where('id', $id)->firstOrFail();
    }

    public function getPICData($id, $flag, $level){                             //ngambil data untuk ditampilkan di dropdown form Edit PIC
        if($flag == 0){
            return User::where('users.id_ulevel', $level)
            ->orderBy('id', 'asc')
            ->get()
            ->pluck('nama_user', 'id')
            ->toArray();
        }
        else{
            return DB::table('users')
            ->select(DB::raw('count(projects.id) as jml, users.id, users.nama_user'))
            ->leftjoin('projects', function($join) use ($id) {
                $join->on('projects.id_pic_product', '=', 'users.id')
                ->where('projects.id', $id);
            })
            ->where('users.id_ulevel', $level)
            ->groupBy('users.id','users.nama_user')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_user', 'id')
            ->toArray();
        }
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

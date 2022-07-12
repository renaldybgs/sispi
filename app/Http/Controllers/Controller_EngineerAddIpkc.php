<?php

namespace App\Http\Controllers;

use App\Ipkc;
use App\Projects_Handover;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerAddIpkc extends Controller
{
    public function openPage(){             //buka halaman Manager - Assign
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $cas = DB::select("select * from cas order by nama_issuer asc");           //ngambil data semua mitra
        $users = $this->getUser();                                                      //ngambil data engineer dan adminxengineer
        
        return view('Pages.Engineer.View_EngineerAddIpkc', compact('userLevel', 'users','cas'));
    }

    public function storeNew(Request $request){                         //tambah data projek baru
        $this->authorize('isEngineer', auth()->user());

        $request->validate([                                            //validasi data input projek
            'id_ca' => 'required',
            'no_ipkc' => 'required',
            'jenis_ipkc' => 'required'
            'waktu_assign_project' => 'required',
        ],
        $message = [
            'id_ca.required' => 'Mohon pilih nama issuer',
            'no_ipkc.required' => 'Mohon isi No Ipkc',
            'jenis_ipkc.required' => 'Mohon Pilih Jenis Ipkc'
            'waktu_assign_project.required' => 'Mohon isi Issued Date',
        ]);

        // $project_dir = $this->getProjectDirectory($request->id_product, $request->id_mitra, $request->id_user, $request->nama_project);

        $newprojectipkc = Ipkc::create([                                 //bikin data project baru    
            'id_ca' => $request->id_ca,
            'no_ipkc' => $request->no_ipkc,
            'bin' => $request->bin,
            'jenis_ipkc' => $request->jenis_ipkc,
            'waktu_assign_project' => $request->waktu_assign_project,
            // 'direktori_project' => $project_dir
        ]);

        return redirect('/engineer/ipkc')->with('success','Project Ipkc berhasil di tambahkan');
    }

    public function getUser(){                                      //ngambil data user engineer dan adminxengineer
        return User::select(DB::raw('*'))->whereIn('id_ulevel', [1, 2, 4, 5])->get();
    }

    public function getIpkcById($id){                                        //ngamabil data projek berdasarkan idnya
        return Ipkcs::where('id', $id)->firstOrFail();
    }

    public function getIpkcDirectory($ca, $user){
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

        $project_dir = 'Documents/' . $year . '/' . $nama_product . '/' . '[' . $inisial_user . '] ' . $nama_project;

        return $project_dir; 
    }
}

<?php

namespace App\Http\Controllers;

use App\Qris;
use App\Projects_Handover;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerAddQris extends Controller
{
    public function openPage(){             //buka halaman Manager - Assign
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $products = DB::select("select * from products order by nama_product asc");     //ngambil data semua product
        $mitras = DB::select("select * from mitras order by nama_mitra asc");           //ngambil data semua mitra
        $ptypes = DB::select("select * from projects_types order by nama_ptype asc");   //ngambil data semua project type
        $users = $this->getUser();                                                      //ngambil data engineer dan adminxengineer
        
        return view('Pages.Engineer.View_EngineerAddProjectsQris', compact('userLevel', 'users', 'products','mitras','ptypes'));
    }

    public function storeNew(Request $request){                         //tambah data projek baru
        $this->authorize('isEngineer', auth()->user());

        $request->validate([                                            //validasi data input projek
            'id_product' => 'required',
            'id_mitra' => 'required',
            'waktu_assign_project' => 'required',

        ],
        $message = [
            'id_product.required' => 'Mohon pilih product',
            'id_mitra.required' => 'Mohon pilih nama mitra',
            'waktu_assign_project.required' => 'Mohon isi Issued Date',

        ]);

        // $project_dir = $this->getProjectDirectory($request->id_product, $request->id_mitra, $request->id_user, $request->nama_project);

        $newprojectqris = Qris::create([                                 //bikin data project baru    
            'id_product' => $request->id_product,
            'id_mitra' => $request->id_mitra,
            'waktu_assign_project' => $request->waktu_assign_project,
            // 'direktori_project' => $project_dir
        ]);

        return redirect('/engineer/qris')->with('success','Project QRIS berhasil di tambahkan');
    }

    public function getUser(){                                      //ngambil data user engineer dan adminxengineer
        return User::select(DB::raw('*'))->whereIn('id_ulevel', [1, 2, 4, 5])->get();
    }

    public function getQrisById($id){                                        //ngamabil data projek berdasarkan idnya
        return Qris::where('id', $id)->firstOrFail();
    }

    public function getQrisDirectory($product, $mitra, $user){
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

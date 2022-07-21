<?php

namespace App\Http\Controllers;

use App\Qrisspek;
use App\Projects_Handover;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerAddQrisspeks extends Controller
{
    public function openPage(){             //buka halaman Manager - Assign
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $products = DB::select("select * from products order by nama_product asc");     //ngambil data semua product
        $mitras = DB::select("select * from mitras order by nama_mitra asc");           //ngambil data semua mitra
        $ptypes = DB::select("select * from projects_types order by nama_ptype asc");   //ngambil data semua project type
        $users = $this->getUser();                                                      //ngambil data engineer dan adminxengineer
        
        return view('Pages.Engineer.View_EngineerAddProjectsQrisspek', compact('userLevel', 'users', 'products','mitras','ptypes'));
    }

    public function storeNew(Request $request){                         //tambah data projek baru
        $this->authorize('isEngineer', auth()->user());

        $request->validate([                                            //validasi data input projek
            'id_product' => 'required',
            'id_mitra' => 'required',
            'no_formulir' => 'required',
            'waktu_assign_project' => 'required',
        ],
        $message = [
            'id_product.required' => 'Mohon pilih product',
            'id_mitra.required' => 'Mohon pilih nama mitra',
            'no_formulir.required' => 'Mohon isi No Formulir',
            'waktu_assign_project.required' => 'Mohon isi Issued Date',
        ]);

        // $project_dir = $this->getProjectDirectory($request->id_product, $request->id_mitra, $request->id_user, $request->nama_project);

        $newprojectqrisspek = Qrisspek::create([                                 //bikin data project baru    
            'id_product' => $request->id_product,
            'id_mitra' => $request->id_mitra,
            'no_formulir' => $request->no_formulir,
            'waktu_assign_project' => $request->waktu_assign_project,
            // 'direktori_project' => $project_dir
        ]);

        return redirect('/engineer/qrisspek')->with('success','Project QRIS berhasil di tambahkan');
    }

    public function getUser(){                                      //ngambil data user engineer dan adminxengineer
        return User::select(DB::raw('*'))->whereIn('id_ulevel', [1, 2, 4, 5])->get();
    }

    public function getQrisspekById($id){                                        //ngamabil data projek berdasarkan idnya
        return Qrisspek::where('id', $id)->firstOrFail();
    }

    public function getQrisspekDirectory($product, $mitra, $user){
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

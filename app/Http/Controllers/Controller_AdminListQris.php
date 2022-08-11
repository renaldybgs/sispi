<?php

namespace App\Http\Controllers;

use DataTables;
use App\Qris;
use App\User;
use App\Exports\AdminProjectExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class Controller_AdminListQris extends Controller
{
    public function openPage(){                             //buka halaman Manager - List Project
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $prod = DB::table('products')->select('nama_product')->orderBy('nama_product', 'ASC')->get();
        $mitra = DB::table('mitras')->select('nama_mitra')->orderBy('nama_mitra', 'ASC')->get();
        $pstat = DB::table('projects_stats')->select('id' , 'nama_pstat')->orderBy('id', 'ASC')->get();
        
        return view('Pages.Admin.View_AdminListQris', compact('userLevel', 'prod', 'mitra', 'pstat'));  
    }

    public function export(){
        $this->authorize('isAdmin', auth()->user());
        return (new AdminProjectExport)->download('Data All Project.xlsx');
    }

    public function detail($id){                     //buka detail projek
        $qris = $this->getQrisById($id);       //ambil data projek yg mau diliat
        $pbn = $this->getPBN($id);                   

        // dd($project);
        
        return view('Layouts.FormDetailQris', compact('pbn', 'qris'));
    }

    public function editQris($id){
        $this->authorize('isAdmin', auth()->user());
        
        $qris = $this->getQrisById($id); 
        $listproduct = $this->getProductList($id);
        $listmitra = $this->getMitraList($id);
        return View('Layouts.FormProjectQris', compact('qris', 'listproduct', 'listmitra'));
    }

    public function updateQris(Request $request, $id){
        $this->authorize('isAdmin', auth()->user());

        $qris = $this->getQrisById($id);
        $qris->id_mitra = $request->id_mitra;                  
        $qris->id_product = $request->id_product;                             
        $qris->no_rekomendasi = $request->no_rekomendasi;
        $qris->jenis_qrisbi = $request->jenis_qrisbi;
        $qris->tgl_ijinbi = $request->tgl_ijinbi;
        $qris->waktu_assign_project = $request->waktu_assign_project;

        $qris->save(); 
    }

    public function deleteQris($id){
        $this->authorize('isAdmin', auth()->user());

        Qris::where('id', $id)->delete();                            //cari data project berdasarkan id lalu didelete
        $qrisData['data'] = Qris::orderby("id", "desc")->get();    //mengambil semua data mitra yg baru, setelah sudah menghapus data, untuk direturn

        return response()->json($qrisData);
    }

    public function dataTable(Request $request){                            //generate table untuk halaman Manager - List Project
        $data = $this->getAllQrisData();    //dd($data);
        return DataTables::of($data)                        //bikin table berdasarkan data yg udh diambi;
            ->addColumn('nama_mitra', function($data){    //tambah kolom nama project yg bisa diklik
                return view('Layouts.ClickableTextQris',[
                    'data'=> $data,
                    'url_detail' => route('adminlistqris.detail', $data->id)
                ]);
            })
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addColumn('action', function($data){        
                return view('Layouts.ActionListQris',[
                    'data'=> $data,
                    'url_editlist' => route('adminqris.edit', $data->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_mitra', 'id_pstat'])
            ->make(true);
    }

    public function getQrisById($id){
        return Qris::where('id', $id)->firstOrFail();
    }

    public function getOriginalPIC($id){
        return DB::table('qris')
        ->select(DB::raw('qris.id, qris.id_original_pic, users.nama_user'))
        ->leftjoin('users', 'qris.id_original_pic', '=', 'users.id')
        ->where('qris.id', '=', $id)
        ->first();
    }

    public function getPBN($id){
        return DB::table('qris')
        ->select(DB::raw('qris.id, DATE(qris.surat_rekomendasi) as surat_rekomendasi, qris.jenis_qrisbi, qris.ijin_qrisbi, DATE(qris.tgl_ijinbi) as tgl_ijinbi, qris.notes_project, DATE(qris.last_updated) as last_updated'))
        ->where('qris.id', '=', $id)
        ->first();
    }

    public function getInisialUser($id){                             //ngambil data untuk ditampilkan di dropdown form Edit PIC
        return DB::table('users')
        ->select(DB::raw('count(qris.id) as jml, users.id, users.inisial_user'))
        ->leftjoin('qris', function($join) use ($id) {
            $join->on('qris.id', '=', 'qris.id_original_pic')
            ->where('qris.id', $id);
        })
        ->whereIn('users.id_ulevel', [1, 2, 4, 5])
        ->groupBy('qris.id_original_pic', 'users.id', 'users.inisial_user')
        ->orderBy('jml','DESC')
        ->get()
        ->pluck('inisial_user', 'id')
        ->toArray();
    }

    public function getUserList($id){
        return DB::table('users')
            ->select(DB::raw('count(qris.id) as jml, users.id, users.nama_user'))
            ->leftjoin('qris', function($join) use ($id) {
                $join->on('qris.id_current_pic', '=', 'users.id')
                ->where('qris.id', $id);
            })
            ->whereIn('users.id_ulevel', [1, 2, 4, 5])
            ->groupBy('users.id','users.nama_user')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_user', 'id')
            ->toArray();
    }

    public function getProductList($id){
        return DB::table('products')
            ->select(DB::raw('count(qris.id) as jml, products.id, products.nama_product'))
            ->leftjoin('qris', function($join) use ($id) {
                $join->on('qris.id_product', '=', 'products.id')
                ->where('qris.id', $id);
            })
            ->groupBy('products.id','products.nama_product')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_product', 'id')
            ->toArray();
    }

    public function getMitraList($id){
        return DB::table('mitras')
            ->select(DB::raw('count(qris.id) as jml, mitras.id, mitras.nama_mitra'))
            ->leftjoin('qris', function($join) use ($id) {
                $join->on('qris.id_mitra', '=', 'mitras.id')
                ->where('qris.id', $id);
            })
            ->groupBy('mitras.id','mitras.nama_mitra')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_mitra', 'id')
            ->toArray();
    }

    public function getAllQrisData(){   //ambil data buat ditempel di table
        return DB::table('qris')
            ->select(DB::raw('qris.id, products.nama_product, mitras.nama_mitra, DATE(qris.waktu_assign_project) as waktu, qris.no_rekomendasi, qris.jenis_qrisbi, qris.ijin_qrisbi, projects_stats.id as id_pstat, DATE(qris.last_updated) as last_updated'))
            ->leftjoin('products', 'qris.id_product', '=', 'products.id')
            ->leftjoin('mitras', 'qris.id_mitra', '=', 'mitras.id')
            ->leftjoin('projects_stats', 'qris.id_pstat', '=', 'projects_stats.id')
            ->orderBy('waktu','DESC')
            ->get();   
    }
}

<?php

namespace App\Http\Controllers;

use DataTables;
use App\Qrisspek;
use App\User;
use App\Exports\AdminProjectExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class Controller_AdminListQrisspeks extends Controller
{
        public function openPage(){                             //buka halaman Manager - List Project
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $prod = DB::table('products')->select('nama_product')->orderBy('nama_product', 'ASC')->get();
        $mitra = DB::table('mitras')->select('nama_mitra')->orderBy('nama_mitra', 'ASC')->get();
        $pstat = DB::table('projects_stats')->select('id' , 'nama_pstat')->orderBy('id', 'ASC')->get();
        
        return view('Pages.Admin.View_AdminListQrisspek', compact('userLevel', 'prod', 'mitra', 'pstat'));  
    }

    public function export(){
        $this->authorize('isAdmin', auth()->user());
        return (new AdminProjectExport)->download('Data All Project.xlsx');
    }

    public function detail($id){                     //buka detail projek
        $qrisspek = $this->getQrisspekById($id);       //ambil data projek yg mau diliat
        $pbn = $this->getPBN($id);                   

        // dd($project);
        
        return view('Layouts.FormDetailQrisspek', compact('pbn', 'qrisspek'));
    }

    public function editQris($id){
        $this->authorize('isAdmin', auth()->user());
        
        $qrisspek = $this->getQrisspekById($id); 
        $listproduct = $this->getProductList($id);
        $listmitra = $this->getMitraList($id);
        return View('Layouts.FormProjectQrisspek', compact('qrisspek', 'listproduct', 'listmitra'));
    }

    public function updateQris(Request $request, $id){
        $this->authorize('isAdmin', auth()->user());

        $qrisspek = $this->getQrisspekById($id);
        $qrisspek->id_mitra = $request->id_mitra;                  
        $qrisspek->id_product = $request->id_product;                             
        $qrisspek->no_formulir = $request->no_formulir;
        $qrisspek->no_spek = $request->no_spek; 

        $qrisspek->save(); 
    }

    public function deleteQris($id){
        $this->authorize('isAdmin', auth()->user());

        Qrisspek::where('id', $id)->delete();                            //cari data project berdasarkan id lalu didelete
        $qrisspekData['data'] = Qrisspek::orderby("id", "desc")->get();    //mengambil semua data mitra yg baru, setelah sudah menghapus data, untuk direturn

        return response()->json($qrisspekData);
    }

    public function dataTable(Request $request){                            //generate table untuk halaman Manager - List Project
        $data = $this->getAllQrisspekData();    //dd($data);
        return DataTables::of($data)                        //bikin table berdasarkan data yg udh diambi;
            // ->addColumn('nama_mitra', function($data){    //tambah kolom nama project yg bisa diklik
            //     return view('Layouts.ClickableTextQris',[
            //         'data'=> $data,
            //         'url_detail' => route('adminlistqrisspek.detail', $data->id)
            //     ]);
            // })
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addColumn('action', function($data){        
                return view('Layouts.ActionListQrisspek',[
                    'data'=> $data,
                    'url_editlist' => route('adminqrisspek.edit', $data->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_mitra', 'id_pstat'])
            ->make(true);
    }

    public function getQrisspekById($id){
        return Qrisspek::where('id', $id)->firstOrFail();
    }

    public function getOriginalPIC($id){
        return DB::table('qrisspeks')
        ->select(DB::raw('qrisspeks.id, qrisspeks.id_original_pic, users.nama_user'))
        ->leftjoin('users', 'qrisspeks.id_original_pic', '=', 'users.id')
        ->where('qrisspeks.id', '=', $id)
        ->first();
    }

    public function getPBN($id){
        return DB::table('qrisspeks')
        ->select(DB::raw('qrisspeks.id, DATE(qrispeks.spek_qris) as waktu, qrisspeks.no_formulir, qrisspeks.no_spek, qrisspeks.notes_project'))
        ->where('qrisspeks.id', '=', $id)
        ->orderBy('waktu')
        ->first();
    }

    public function getInisialUser($id){                             //ngambil data untuk ditampilkan di dropdown form Edit PIC
        return DB::table('users')
        ->select(DB::raw('count(qrisspeks.id) as jml, users.id, users.inisial_user'))
        ->leftjoin('qrisspeks', function($join) use ($id) {
            $join->on('qrisspeks.id', '=', 'qrisspeks.id_original_pic')
            ->where('qrisspeks.id', $id);
        })
        ->whereIn('users.id_ulevel', [1, 2, 4, 5])
        ->groupBy('qrisspeks.id_original_pic', 'users.id', 'users.inisial_user')
        ->orderBy('jml','DESC')
        ->get()
        ->pluck('inisial_user', 'id')
        ->toArray();
    }

    public function getUserList($id){
        return DB::table('users')
            ->select(DB::raw('count(qrisspeks.id) as jml, users.id, users.nama_user'))
            ->leftjoin('qrisspeks', function($join) use ($id) {
                $join->on('qrisspeks.id_current_pic', '=', 'users.id')
                ->where('qrisspeks.id', $id);
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
            ->select(DB::raw('count(qrisspeks.id) as jml, products.id, products.nama_product'))
            ->leftjoin('qrisspeks', function($join) use ($id) {
                $join->on('qrisspeks.id_product', '=', 'products.id')
                ->where('qrisspeks.id', $id);
            })
            ->groupBy('products.id','products.nama_product')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_product', 'id')
            ->toArray();
    }

    public function getMitraList($id){
        return DB::table('mitras')
            ->select(DB::raw('count(qrisspeks.id) as jml, mitras.id, mitras.nama_mitra'))
            ->leftjoin('qrisspeks', function($join) use ($id) {
                $join->on('qrisspeks.id_mitra', '=', 'mitras.id')
                ->where('qrisspeks.id', $id);
            })
            ->groupBy('mitras.id','mitras.nama_mitra')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_mitra', 'id')
            ->toArray();
    }

    public function getAllQrisspekData(){   //ambil data buat ditempel di table
        return DB::table('qrisspeks')
            ->select(DB::raw('qrisspeks.id, products.nama_product, mitras.nama_mitra, DATE(qrisspeks.waktu_assign_project) as waktu, qrisspeks.no_formulir, qrisspeks.no_spek, DATE(qrisspeks.spek_qris) as waktu, projects_stats.id as id_pstat'))
            ->leftjoin('products', 'qrisspeks.id_product', '=', 'products.id')
            ->leftjoin('mitras', 'qrisspeks.id_mitra', '=', 'mitras.id')
            ->leftjoin('projects_stats', 'qrisspeks.id_pstat', '=', 'projects_stats.id')
            ->orderBy('waktu','DESC')
            ->get();   
    }
}

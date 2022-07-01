<?php

namespace App\Http\Controllers;

use DataTables;
use App\Qrisspek;
use App\User; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class Controller_EngineerListQrisspeks extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Own Going (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $pic = DB::table('users')->select('inisial_user')->whereIn('id_ulevel', [1, 2, 4, 5])->orderBy('id', 'ASC')->get();
        $prod = DB::table('products')->select('nama_product')->orderBy('nama_product', 'ASC')->get();
        $mitra = DB::table('mitras')->select('nama_mitra')->orderBy('nama_mitra', 'ASC')->get();
        $pstat = DB::table('projects_stats')->select('id' , 'nama_pstat')->orderBy('id', 'ASC')->get();
        
        return view('Pages.Engineer.View_EngineerListQrisspek', compact('userLevel', 'pic', 'prod', 'mitra',  'pstat'));
    }

    public function detail($id){                     //buka detail projek
        $qrisspek = $this->getQrisspekById($id);       //ambil data projek yg mau diliat
        $pbn = $this->getPBN($id);                   //ambil data progress + bobot + notes

        // dd($project);
        
        return view('Layouts.FormDetailQrisspek', compact('pbn', 'qrisspek'));
    }

    public function dataTable(Request $request){                            //generate table untuk halaman Manager - List Project
        $data = $this->getAllQrisspekData();    //dd($data);
        return DataTables::of($data)                        //bikin table berdasarkan data yg udh diambi;
            // ->addColumn('nama_mitra', function($data){    //tambah kolom nama project yg bisa diklik
            //     return view('Layouts.ClickableTextQris',[
            //         'data'=> $data,
            //         'url_detail' => route('adminlistqris.detail', $data->id)
            //     ]);
            // })
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
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
        return DB::table('qrisspek')
        ->select(DB::raw('qrisspek.id, qrisspek.id_original_pic, users.nama_user'))
        ->leftjoin('users', 'qrisspek.id_original_pic', '=', 'users.id')
        ->where('qrisspek.id', '=', $id)
        ->first();
    }

    public function getPBN($id){
        return DB::table('qrisspek')
        ->select(DB::raw('qrisspek.id, DATE(qrisspek.spek_qris) as waktu, qrisspek.no_formulir, qrisspek.no_spek, qrisspek.notes_project'))
        ->where('qrisspek.id', '=', $id)
        ->orderBy('waktu')
        ->first();
    }

    public function getInisialUser($id){                             //ngambil data untuk ditampilkan di dropdown form Edit PIC
        return DB::table('users')
        ->select(DB::raw('count(qrisspek.id) as jml, users.id, users.inisial_user'))
        ->leftjoin('qrisspek', function($join) use ($id) {
            $join->on('qrisspek.id', '=', 'qrisspek.id_original_pic')
            ->where('qrisspek.id', $id);
        })
        ->whereIn('users.id_ulevel', [1, 2, 4, 5])
        ->groupBy('qrisspek.id_original_pic', 'users.id', 'users.inisial_user')
        ->orderBy('jml','DESC')
        ->get()
        ->pluck('inisial_user', 'id')
        ->toArray();
    }

    public function getUserList($id){
        return DB::table('users')
            ->select(DB::raw('count(qrisspek.id) as jml, users.id, users.nama_user'))
            ->leftjoin('qrisspek', function($join) use ($id) {
                $join->on('qrisspek.id_current_pic', '=', 'users.id')
                ->where('qrisspek.id', $id);
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
            ->select(DB::raw('count(qrisspek.id) as jml, products.id, products.nama_product'))
            ->leftjoin('qrisspek', function($join) use ($id) {
                $join->on('qrisspek.id_product', '=', 'products.id')
                ->where('qrisspek.id', $id);
            })
            ->groupBy('products.id','products.nama_product')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_product', 'id')
            ->toArray();
    }

    public function getMitraList($id){
        return DB::table('mitras')
            ->select(DB::raw('count(qrisspek.id) as jml, mitras.id, mitras.nama_mitra'))
            ->leftjoin('qrisspek', function($join) use ($id) {
                $join->on('qrisspek.id_mitra', '=', 'mitras.id')
                ->where('qrisspek.id', $id);
            })
            ->groupBy('mitras.id','mitras.nama_mitra')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_mitra', 'id')
            ->toArray();
    }

    public function getAllQrisspekData(){   //ambil data buat ditempel di table
        return DB::table('qrisspek')
            ->select(DB::raw('qrisspek.id, products.nama_product, mitras.nama_mitra, DATE(qrisspek.waktu_assign_project) as waktu, qrisspek.no_formulir, qrisspek.no_spek, DATE(qrisspek.spek_qris) as waktu, projects_stats.id as id_pstat'))
            ->leftjoin('products', 'qrisspek.id_product', '=', 'products.id')
            ->leftjoin('mitras', 'qrisspek.id_mitra', '=', 'mitras.id')
            ->leftjoin('projects_stats', 'qrisspek.id_pstat', '=', 'projects_stats.id')
            ->orderBy('waktu','DESC')
            ->get();   
    }
}

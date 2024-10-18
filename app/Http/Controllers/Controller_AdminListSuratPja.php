<?php

namespace App\Http\Controllers;

use DataTables;
use App\Suratpja;
use App\User;
use App\Exports\SuratExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_AdminListSuratPja extends Controller
{
    public function openPage(){                             //buka halaman Manager - List Project
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $mitra = DB::table('mitras')->select('nama_mitra')->orderBy('nama_mitra', 'ASC')->get();
        $pstat = DB::table('projects_stats')->select('id' , 'nama_pstat')->orderBy('id', 'ASC')->get();
        
        return view('Pages.Admin.View_AdminListSuratPja', compact('userLevel', 'mitra', 'pstat'));  
    }

     public function export(){
        $this->authorize('isAdmin', auth()->user());
        return (new SuratExport)->download('Data ALL Surat PJA.xlsx');
    }


    public function editSurat($id){
        $this->authorize('isAdmin', auth()->user());
        
        $surat = $this->getSuratpjaById($id); 
        $listmitra = $this->getMitraList($id);
        return View('Layouts.FormProjectSuratPja', compact('surat', 'listmitra'));
    }

    public function updateSurat(Request $request, $id){
        $this->authorize('isAdmin', auth()->user());

        $surat = $this->getSuratpjaById($id);
        $surat->id_mitra = $request->id_mitra;                  
        $surat->perihal = $request->perihal;                             
        $surat->notes_surat = $request->notes_surat;
        $surat->save(); 
    }

    public function deleteSurat($id){
        $this->authorize('isAdmin', auth()->user());

        Suratpja::where('id', $id)->delete();                            //cari data project berdasarkan id lalu didelete
        $suratData['data'] = Surat::orderby("id", "desc")->get();    //mengambil semua data mitra yg baru, setelah sudah menghapus data, untuk direturn

        return response()->json($suratData);
    }

    public function dataTable(Request $request){                            //generate table untuk halaman Manager - List Project
        $data = $this->getAllSuratData();    //dd($data);
        return DataTables::of($data)                        //bikin table berdasarkan data yg udh diambi;
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addColumn('action', function($data){        
                return view('Layouts.ActionListSuratPja',[
                    'data'=> $data,
                    'url_editlist' => route('adminsuratpja.edit', $data->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_mitra', 'id_pstat'])
            ->make(true);
    }

    public function getSuratpjaById($id){
        return Suratpja::where('id', $id)->firstOrFail();
    }

    public function getOriginalPIC($id){
        return DB::table('suratpja')
        ->select(DB::raw('suratpja.id, suratpja.id_original_pic, users.nama_user'))
        ->leftjoin('users', 'suratpja.id_original_pic', '=', 'users.id')
        ->where('suratpja.id', '=', $id)
        ->first();
    }


    public function getMitraList($id){
        return DB::table('mitras')
            ->select(DB::raw('count(suratpjas.id) as jml, mitras.id, mitras.nama_mitra'))
            ->leftjoin('suratpjas', function($join) use ($id) {
                $join->on('suratpjas.id_mitra', '=', 'mitras.id')
                ->where('suratpjas.id', $id);
            })
            ->groupBy('mitras.id','mitras.nama_mitra')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_mitra', 'id')
            ->toArray();
    }

    public function getAllSuratData(){                                    
        return DB::table('suratpjas')
        ->select(DB::raw('suratpjas.id, mitras.nama_mitra, suratpjas.no_surat, suratpjas.no_unik, suratpjas.perihal, Date(suratpjas.waktu_assign_surat) as tanggal_surat, projects_stats.id as id_pstat, suratpjas.added_by, date(suratpjas.last_updated) as last_updated'))
        ->leftjoin('mitras', 'suratpjas.id_mitra', '=', 'mitras.id')
        ->leftjoin('projects_stats', 'suratpjas.id_pstat', '=', 'projects_stats.id')
        ->orderBy('tanggal_surat', 'desc')
        ->get();
    }
}

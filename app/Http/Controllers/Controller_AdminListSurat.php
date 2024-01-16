<?php

namespace App\Http\Controllers;

use DataTables;
use App\Surat;
use App\User;
use App\Exports\SuratExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_AdminListSurat extends Controller
{
    public function openPage(){                             //buka halaman Manager - List Project
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $mitra = DB::table('mitras')->select('nama_mitra')->orderBy('nama_mitra', 'ASC')->get();
        $pstat = DB::table('projects_stats')->select('id' , 'nama_pstat')->orderBy('id', 'ASC')->get();
        
        return view('Pages.Admin.View_AdminListSurat', compact('userLevel', 'mitra', 'pstat'));  
    }

     public function export(){
        $this->authorize('isAdmin', auth()->user());
        return (new SuratExport)->download('Data ALL Surats.xlsx');
    }

    public function detail($id){                     //buka detail projek
        $surat = $this->getSuratById($id);       //ambil data projek yg mau diliat
        $pbn = $this->getPBN($id);                   

        // dd($project);
        
        return view('Layouts.FormDetailQris', compact('pbn', 'qris'));
    }

    public function editSurat($id){
        $this->authorize('isAdmin', auth()->user());
        
        $surat = $this->getSuratById($id); 
        $listmitra = $this->getMitraList($id);
        return View('Layouts.FormProjectSurat', compact('surat', 'listmitra'));
    }

    public function updateSurat(Request $request, $id){
        $this->authorize('isAdmin', auth()->user());

        $surat = $this->getSuratById($id);
        $surat->id_mitra = $request->id_mitra;                  
        $surat->perihal = $request->perihal;                             
        $surat->notes_surat = $request->notes_surat;
        $surat->save(); 
    }

    public function deleteSurat($id){
        $this->authorize('isAdmin', auth()->user());

        Surat::where('id', $id)->delete();                            //cari data project berdasarkan id lalu didelete
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
                return view('Layouts.ActionListSurat',[
                    'data'=> $data,
                    'url_editlist' => route('adminsurat.edit', $data->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_mitra', 'id_pstat'])
            ->make(true);
    }

    public function getSuratById($id){
        return Surat::where('id', $id)->firstOrFail();
    }

    public function getOriginalPIC($id){
        return DB::table('surat')
        ->select(DB::raw('surat.id, surat.id_original_pic, users.nama_user'))
        ->leftjoin('users', 'surat.id_original_pic', '=', 'users.id')
        ->where('surat.id', '=', $id)
        ->first();
    }


    public function getMitraList($id){
        return DB::table('mitras')
            ->select(DB::raw('count(surats.id) as jml, mitras.id, mitras.nama_mitra'))
            ->leftjoin('surats', function($join) use ($id) {
                $join->on('surats.id_mitra', '=', 'mitras.id')
                ->where('surats.id', $id);
            })
            ->groupBy('mitras.id','mitras.nama_mitra')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_mitra', 'id')
            ->toArray();
    }

    public function getAllSuratData(){                                    
        return DB::table('surats')
        ->select(DB::raw('surats.id, mitras.nama_mitra, surats.no_surat, surats.no_unik, surats.perihal, Date(surats.waktu_assign_surat) as tanggal_surat, projects_stats.id as id_pstat, surats.added_by, date(surats.last_updated) as last_updated'))
        ->leftjoin('mitras', 'surats.id_mitra', '=', 'mitras.id')
        ->leftjoin('projects_stats', 'surats.id_pstat', '=', 'projects_stats.id')
        ->orderBy('tanggal_surat', 'desc')
        ->get();
    }
}

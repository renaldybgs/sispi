<?php

namespace App\Http\Controllers;

use DataTables;
use App\Ipkc;
use App\User;
use App\Exports\IpkcExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class Controller_AdminListIpkc extends Controller
{
    public function openPage(){                             //buka halaman Manager - List Project
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $ca = DB::table('cas')->select('nama_issuer')->orderBy('nama_issuer', 'ASC')->get();
        $pstat = DB::table('projects_stats')->select('id' , 'nama_pstat')->orderBy('id', 'ASC')->get();
        
        return view('Pages.Admin.View_AdminListIpkc', compact('userLevel', 'ca', 'pstat'));  
    }

    public function export(){
        $this->authorize('isAdmin', auth()->user());
        return (new IpkcExport)->download('Data All IPKC.xlsx');
    }

    public function detail($id){                     //buka detail projek
        $ipkc = $this->getIpkcById($id);       //ambil data projek yg mau diliat
        $pbn = $this->getPBN($id);                   

        // dd($project);
        
        return view('Layouts.FormDetailIpkc', compact('pbn', 'ipkc'));
    }

    public function editIpkc($id){
        $this->authorize('isAdmin', auth()->user());
        
        $ipkc = $this->getIpkcById($id); 
        $listcas = $this->getCasList($id);
        return View('Layouts.FormProjectIpkc', compact('ipkc', 'listcas'));
    }

    public function updateIpkc(Request $request, $id){
        $this->authorize('isAdmin', auth()->user());

        $ipkc = $this->getIpkcById($id);
        $ipkc->id_ca = $request->id_ca;                                              
        $ipkc->no_ipkc = $request->no_ipkc;
        $ipkc->jenis_ipkc = $request->jenis_ipkc; 

        $ipkc->save(); 
    }

    public function deleteIpkc($id){
        $this->authorize('isAdmin', auth()->user());

        Ipkc::where('id', $id)->delete();                            //cari data project berdasarkan id lalu didelete
        $ipkcData['data'] = Ipkc::orderby("id", "desc")->get();    //mengambil semua data mitra yg baru, setelah sudah menghapus data, untuk direturn

        return response()->json($ipkcData);
    }

    public function dataTable(Request $request){                            //generate table untuk halaman Manager - List Project
        $data = $this->getAllIpkcData();    //dd($data);
        return DataTables::of($data)                        //bikin table berdasarkan data yg udh diambi;
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addColumn('action', function($data){        
                return view('Layouts.ActionListIpkc',[
                    'data'=> $data,
                    'url_editlist' => route('adminlistipkc.edit', $data->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_ca', 'id_pstat'])
            ->make(true);
    }

    public function getIpkcById($id){
        return Ipkc::where('id', $id)->firstOrFail();
    }

    public function getOriginalPIC($id){
        return DB::table('ipkcs')
        ->select(DB::raw('ipkcs.id, ipkcs.id_original_pic, users.nama_user'))
        ->leftjoin('users', 'ipkcs.id_original_pic', '=', 'users.id')
        ->where('ipkcs.id', '=', $id)
        ->first();
    }

    public function getPBN($id){
        return DB::table('ipkcs')
        ->select(DB::raw('ipkcs.id, DATE(ipkcs.waktu_assign_project) as waktu, ipkcs.no_ipkc, ipkcs.jenis_ipkc, ipkcs.notes_project, ipkcs.bin'))
        ->where('ipkcs.id', '=', $id)
        ->first();
    }

    public function getInisialUser($id){                             //ngambil data untuk ditampilkan di dropdown form Edit PIC
        return DB::table('users')
        ->select(DB::raw('count(ipkcs.id) as jml, users.id, users.inisial_user'))
        ->leftjoin('ipkcs', function($join) use ($id) {
            $join->on('ipkcs.id', '=', 'ipkcs.id_original_pic')
            ->where('ipkcs.id', $id);
        })
        ->whereIn('users.id_ulevel', [1, 2, 4, 5])
        ->groupBy('ipkcs.id_original_pic', 'users.id', 'users.inisial_user')
        ->orderBy('jml','DESC')
        ->get()
        ->pluck('inisial_user', 'id')
        ->toArray();
    }

    public function getUserList($id){
        return DB::table('users')
            ->select(DB::raw('count(ipkcs.id) as jml, users.id, users.nama_user'))
            ->leftjoin('ipkcs', function($join) use ($id) {
                $join->on('ipkcs.id_current_pic', '=', 'users.id')
                ->where('ipkcs.id', $id);
            })
            ->whereIn('users.id_ulevel', [1, 2, 4, 5])
            ->groupBy('users.id','users.nama_user')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_user', 'id')
            ->toArray();
    }

    public function getCasList($id){
        return DB::table('cas')
            ->select(DB::raw('count(ipkcs.id) as jml, cas.id, cas.nama_issuer'))
            ->leftjoin('ipkcs', function($join) use ($id) {
                $join->on('ipkcs.id_ca', '=', 'cas.id')
                ->where('ipkcs.id', $id);
            })
            ->groupBy('cas.id','cas.nama_issuer')
            ->orderBy('jml','DESC')
            ->get()
            ->pluck('nama_issuer', 'id')
            ->toArray();
    }

    public function getAllIpkcData(){   //ambil data buat ditempel di table
        return DB::table('ipkcs')
            ->select(DB::raw('ipkcs.id, cas.nama_issuer, DATE(ipkcs.waktu_assign_project) as waktu, ipkcs.no_ipkc, ipkcs.jenis_ipkc, ipkcs.bin, ipkcs.notes_project, projects_stats.id as id_pstat'))
            ->leftjoin('cas', 'ipkcs.id_ca', '=', 'cas.id')
            ->leftjoin('projects_stats', 'ipkcs.id_pstat', '=', 'projects_stats.id')
            ->orderBy('waktu','DESC')
            ->get();   
    }
}

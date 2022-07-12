<?php

namespace App\Http\Controllers;

use DataTables;
use App\Ipkc;
use App\Projects_Stat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerHistoryIpkc extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Done (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerHistoryQrisspek', compact('userLevel'));
    }

    public function dataTable(){                            //generate table di halaman Engineer - Project Done (Own Project)
        $userId = auth()->id();                             //ngambil id user yg lagi login
        $ipkc = $this->getIpkcData($userId);          //ngambil data2 projek user yg lagi login
        return DataTables::of($ipkc)                     //bikin tabel berdasarkan data2 yg udh diambil
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_pstat'])
            ->make(true);
    }

   public function getIpkcData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
        return DB::table('ipkcs')
        ->select(DB::raw('ipkcs.id, ipkcs.no_ipkc, ipkcs.bin, ipkcs.jenis_ipkc, ipkcs.id_pstat, ipkcs.notes_project, projects_stats.nama_pstat, cas.nama_issuer, date(ipkcs.waktu_assign_project) as tanggal_assign'))
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'ipkcs.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('cas', 'ipkcs.id_ca', '=', 'cas.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereIn('id_pstat', [15,16])
        ->orderBy('tanggal_assign', 'desc')
        ->get();
    }
}

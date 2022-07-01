<?php

namespace App\Http\Controllers;

use DataTables;
use App\Qrisspek;
use App\Projects_Stat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerHistoryQrisspeks extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Done (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerHistoryQrisspek', compact('userLevel'));
    }

    public function dataTable(){                            //generate table di halaman Engineer - Project Done (Own Project)
        $userId = auth()->id();                             //ngambil id user yg lagi login
        $qrisspek = $this->getQrisspekData($userId);          //ngambil data2 projek user yg lagi login
        return DataTables::of($qrisspek)                     //bikin tabel berdasarkan data2 yg udh diambil
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_pstat'])
            ->make(true);
    }

   public function getQrisspekData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
        return DB::table('qrisspek')
        ->select(DB::raw('qrisspek.id, qrisspek.no_formulir, qrisspek.no_spek, DATE(qrisspek.spek_qris) as waktu, qris.pketerangan_status, products.nama_product, qrisspek.id_pstat, projects_stats.nama_pstat, mitras.nama_mitra, date(qrisspek.waktu_assign_project) as tanggal_assign'))
        ->leftjoin('products', 'qrisspek.id_product', '=', 'products.id')
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'qrisspek.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('mitras', 'qrisspek.id_mitra', '=', 'mitras.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereIn('id_pstat', [19,20])
        ->orderBy('waktu', 'tanggal_assign', 'desc')
        ->get();
    }
}

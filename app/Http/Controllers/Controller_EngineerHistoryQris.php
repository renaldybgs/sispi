<?php

namespace App\Http\Controllers;

use DataTables;
use App\Qris;
use App\Projects_Stat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerHistoryQris extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Done (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerHistoryQris', compact('userLevel'));
    }

    public function dataTable(){                            //generate table di halaman Engineer - Project Done (Own Project)
        $userId = auth()->id();                             //ngambil id user yg lagi login
        $qris = $this->getQrisData($userId);          //ngambil data2 projek user yg lagi login
        return DataTables::of($qris)                     //bikin tabel berdasarkan data2 yg udh diambil
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['id_pstat'])
            ->make(true);
    }

   public function getQrisData($id){                                     //ngambil data buat ditamplin di halaman Engineer - Project Own Going (Own Project)
        return DB::table('qris')
        ->select(DB::raw('qris.id, qris.no_rekomendasi, qris.jenis_qrisbi, qris.ijin_qrisbi, qris.pketerangan_status, products.nama_product, qris.id_pstat, projects_stats.nama_pstat, mitras.nama_mitra, date(qris.waktu_assign_project) as tanggal_assign'))
        ->leftjoin('products', 'qris.id_product', '=', 'products.id')
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'qris.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('mitras', 'qris.id_mitra', '=', 'mitras.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereIn('id_pstat', [19,20])
        ->orderBy('tanggal_assign', 'desc')
        ->get();
    }
}

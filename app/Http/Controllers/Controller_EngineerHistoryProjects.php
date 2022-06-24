<?php

namespace App\Http\Controllers;

use DataTables;
use App\Project;
use App\Projects_Stat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerHistoryProjects extends Controller
{
    public function openPage(){         //buka halaman Engineer - Project Done (Own Project)
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Engineer.View_EngineerHistoryProjects', compact('userLevel'));
    }

    public function dataTable(){                            //generate table di halaman Engineer - Project Done (Own Project)
        $userId = auth()->id();                             //ngambil id user yg lagi login
        $project = $this->getProjectData($userId);          //ngambil data2 projek user yg lagi login
        return DataTables::of($project)                     //bikin tabel berdasarkan data2 yg udh diambil
            ->addColumn('keterangan', function($project){   //nambah kolom keterangan
                return view('Layouts.KeteranganProject',[
                    'project'=> $project,
                    'url_notes' => route('keterangan.notes', $project->id)
                ]);
            })
            ->addColumn('id_pstat', function($data){        //tambah kolom status biar ada iconnya
                return view('Layouts.Status',[
                    'data'=> $data,
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['keterangan', 'id_pstat'])
            ->make(true);
    }

    public function getProjectData($id){                    //ngambil data projek2 dari user yg lagi login
        return DB::table('projects')
        ->select(DB::raw('projects.id, projects.typereg_numb, projects.nama_prod, projects.lab, projects.pketerangan_status, projects.certification_no, projects.identification_num, products.nama_product, projects.id_pstat, projects_stats.nama_pstat, mitras.nama_mitra, date(projects.waktu_assign_project) as tanggal_assign'))
        ->leftjoin('products', 'projects.id_product', '=', 'products.id')
        // ->leftjoin('projects_types', 'projects.id_ptype', '=', 'projects_types.id')
        ->leftjoin('projects_stats', 'projects.id_pstat', '=', 'projects_stats.id')
        ->leftjoin('mitras', 'projects.id_mitra', '=', 'mitras.id')
        // ->where('id_current_pic', $id)
        // ->where('status_handover', '=', '0')
        ->whereIn('id_pstat', [19,20])
        ->orderBy('tanggal_assign', 'desc')
        ->get();
    }
}

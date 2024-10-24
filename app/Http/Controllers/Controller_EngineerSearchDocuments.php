<?php

namespace App\Http\Controllers;

use DataTables;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Controller_EngineerSearchDocuments extends Controller
{
    public function openPage(){
        //Autentikasi level user yg boleh msk
        $userLevel = auth()->user()->id_ulevel;
        
            return view('Pages.Engineer.View_EngineerSearchDocuments', compact('userLevel'));
    }

    public function dataTable(){
        $data = DB::select("select u.inisial_user, pd.nama_product, pt.nama_ptype, m.nama_mitra, pj.nama_prod, d.direktori_document from documents d, projects pj, users u, mitras m, products pd, projects_types pt where d.id_project = 274 and d.id_project = pj.id and pj.id_current_pic = u.id and pj.id_mitra = m.id and pj.id_ptype = pt.id and pj.id_product = pd.id order by pj.waktu_assign_project desc");
        return DataTables::of($data)
            ->addColumn('action', function($data){
                return view('Layouts.ActionSearchdoc',[
                    'data'=> $data,
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }
}

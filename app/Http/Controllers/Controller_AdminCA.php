<?php

namespace App\Http\Controllers;

use App\Cas;
use App\User;
use DataTables;
use Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class Controller_AdminCA extends Controller
{
    public function openPage(){                     //buka halaman Admin - Mitra
        //Autentikasi level user yg boleh msk
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Admin.View_AdminCA', compact('userLevel'));
    }

      /**
     *
     *
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */

    public function create(){                       //nyiapin form Tambah Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $model = new Cas();                       //menyiapkan variabel mitra baru untuk dilempar dan nantinya diisi di form Tambah Mitra
        return view('Layouts.FormCa', compact('model'));
    }

    public function store(Request $request){        //nyimpen data yg udh disubmit dari form Tambah Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $request->validate([                        //validasi data yg sudah diisi di form Tambah Mitra
            'nama_issuer' => 'required|unique:cas|max:51',
            'bin' => 'required|max:100',
            'reg_ca' => 'required|max:50',
            'waktu_assign_project' => 'required',
        ],
        $message = [
            'nama_issuer.required' => ' Mohon isi Nama Issuer',
                'nama_issuer.unique' => ' Nama Issuer sudah terdaftar',
                'nama_issuer.max' => ' Nama Issuer maksimal 51 huruf',
            'bin.required' => ' Mohon isi BIN',
                'bin.max' => ' BIN Maksimal 100 huruf',
            'req_ca.required' => ' Mohon isi No Registrasi CA',
                'req_ca.max' => ' No Registrasi CA Maksimal 50 huruf',
            'waktu_assign_project.required' => 'Mohon isi Issued Date',
        ]);

        $added_by = Auth::user()->inisial_user;     //mencari inisial user untuk dimasukkan ke bagian added_by pada tabel mitra

        $model = Cas::create([                    //memasukkan data2 baru
            'nama_issuer' => $request->nama_issuer,
            'bin' => $request->bin,
            'reg_ca' => $request->reg_ca,
            'added_by' => $added_by,
            'waktu_assign_project' => $request->waktu_assign_project,
        ]);

        return $model;
    }

    public function destroy($id){                                   //delete data
        $this->authorize('isAdmin', auth()->user());
        
        Cas::where('id', $id)->delete();                          //mencari data mitra berdasarkan idnya lalu menghapusnya
        $caData['data'] = Cas::orderby("id", "asc")->get();    //mengambil semua data mitra yg baru, setelah sudah menghapus data, untuk direturn

        return response()->json($caData);
    }

    public function get(){           
        $this->authorize('isAdmin', auth()->user());
                                       
        $all_ca['data'] = Cas::orderby("id", "asc")->get();    //mengambil semua data mitra

        return response()->json($all_ca);
    }

    public function edit($id){                                      //nyiapin form Edit Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $model = Cas::where('id', $id)->firstOrFail();              //mengambil data mitra untuk nanti ditempel datanya di form Edit Mitra
        return view('Layouts.FormCaedit', compact('model'));
    }

    public function update(Request $request, $id){                  //ngedit data yg udh diinput dari form Edit Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $request->validate([                        //validasi data yg sudah diisi di form Tambah Mitra
            'nama_issuer' => 'required|max:51',
            'bin' => 'required|max:100',
            'reg_ca' => 'required|max:50',
        ],
        $message = [
            'nama_issuer.required' => ' Mohon isi Nama Issuer',
                'nama_issuer.max' => ' Nama Issuer maksimal 51 huruf',
            'bin.required' => ' Mohon isi BIN',
                'bin.max' => ' BIN Maksimal 100 huruf',
            'req_ca.required' => ' Mohon isi No Registrasi CA',
                'req_ca.max' => ' No Registrasi CA Maksimal 50 huruf',
        ]);

        $modified_by = Auth::user()->inisial_user;                  //mengambil inisial user untuk ditambahkan pada kolom modified_by di tabel mitra
        $model = Cas::where('id', $id)->firstOrFail();            //mencari data mitra yg ingin diedit
        $model->nama_issuer = $request->nama_issuer;                //edit nama
        $model->bin = $request->bin;
        $model->reg_ca = $request->reg_ca;
        $model->status = $request->status;
        $model->modified_by = $modified_by;                         //edit modified_by
        $model->save();                                             //menyimpan hasil editan data
    }


    public function dataTable(){                                    //generate table di halaman Admin - Mitra
        $model = DB::select("select id, nama_issuer, bin, reg_ca, status, modified_by, added_by, DATE(waktu_assign_project) as waktu from cas");
        return DataTables::of($model)                               //membuat datatable berdasarkan data yg udh diambil
            ->addColumn('action', function($model){                 //nambahin yg gak ada di query, disini yg ditambah action
                return view('Layouts.ActionCa',[
                    'model'=> $model,
                    'url_edit' => route('ca.edit', $model->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }
}

<?php

namespace App\Http\Controllers;

use App\Mitra;
use DataTables;
use Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class Controller_AdminMitra extends Controller
{
    public function openPage(){                     //buka halaman Admin - Mitra
        //Autentikasi level user yg boleh msk
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        return view('Pages.Admin.View_AdminMitra', compact('userLevel'));
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
        
        $model = new Mitra();                       //menyiapkan variabel mitra baru untuk dilempar dan nantinya diisi di form Tambah Mitra
        return view('Layouts.FormMitra', compact('model'));
    }

    public function store(Request $request){        //nyimpen data yg udh disubmit dari form Tambah Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $request->validate([                        //validasi data yg sudah diisi di form Tambah Mitra
            'nama_mitra' => 'required|unique:mitras|max:51',
            'alamat' => 'required|max:255',
            'nama_pic' => 'required|max:20',
        ],
        $message = [
            'nama_mitra.required' => ' Mohon isi Nama Mitra',
                'nama_mitra.unique' => ' Nama Mitra sudah terdaftar',
                'nama_mitra.max' => ' Nama Mitra maksimal 51 huruf',
                'nama_mitra.regex' => ' Nama Mitra hanya boleh berisi huruf',
            'alamat.required' => ' Mohon isi Alamat',
                'alamat.max' => ' Alamat Anggota Maksimal 255 huruf',
            'nama_pic.required' => ' Mohon isi Nama Pic',
                'nama_pic.max' => ' Nama Pic Maksimal 20 huruf',
        ]);

        $added_by = Auth::user()->inisial_user;     //mencari inisial user untuk dimasukkan ke bagian added_by pada tabel mitra

        $model = Mitra::create([                    //memasukkan data2 baru
            'nama_mitra' => $request->nama_mitra,
            'jenis' => $request->jenis,
            'keanggotaan' => $request->keanggotaan,
            'alamat' => $request->alamat,
            'nama_pic' => $request->nama_pic,
            'email' => $request->email,
            'data_agreement' => $request->data_agreement,
            'reg_numb' => $request->reg_numb,
            'no_anggota' => $request->no_anggota,
            'added_by' => $added_by
        ]);

        return $model;
    }

    public function destroy($id){                                   //delete data
        $this->authorize('isAdmin', auth()->user());
        
        Mitra::where('id', $id)->delete();                          //mencari data mitra berdasarkan idnya lalu menghapusnya
        $mitraData['data'] = Mitra::orderby("id", "asc")->get();    //mengambil semua data mitra yg baru, setelah sudah menghapus data, untuk direturn

        return response()->json($mitraData);
    }

    public function get(){           
        $this->authorize('isAdmin', auth()->user());
                                       
        $all_mitra['data'] = Mitra::orderby("id", "asc")->get();    //mengambil semua data mitra

        return response()->json($all_mitra);
    }

    public function edit($id){                                      //nyiapin form Edit Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $model = Mitra::where('id', $id)->firstOrFail();              //mengambil data mitra untuk nanti ditempel datanya di form Edit Mitra
        return view('Layouts.FormMitra', compact('model'));
    }

    public function update(Request $request, $id){                  //ngedit data yg udh diinput dari form Edit Mitra
        $this->authorize('isAdmin', auth()->user());
        
        $request->validate([
            'nama_mitra' => 'required|max:51',
            'alamat' => 'required|max:255',
            'nama_pic' => 'required|max:20',
        ],
        $message = [
            'nama_mitra.required' => ' Mohon isi Nama Mitra',
                'nama_mitra.max' => ' Nama Mitra maksimal 51 huruf',
                'nama_mitra.regex' => ' Nama Mitra hanya boleh berisi huruf',
            'alamat.required' => ' Mohon isi Alamat',
                'alamat.max' => ' Alamat Anggota Maksimal 255 huruf',
            'nama_pic.required' => ' Mohon isi Nama Pic',
                'nama_pic.max' => ' Nama Pic Maksimal 20 huruf',
        ]);

        $modified_by = Auth::user()->inisial_user;                  //mengambil inisial user untuk ditambahkan pada kolom modified_by di tabel mitra
        $model = Mitra::where('id', $id)->firstOrFail();            //mencari data mitra yg ingin diedit
        $model->nama_mitra = $request->nama_mitra;                //edit nama
        $model->jenis = $request->jenis;
        $model->keanggotaan = $request->keanggotaan;
        $model->alamat = $request->alamat;
        $model->nama_pic = $request->nama_pic;
        $model->email = $request->email;
        $model->data_agreement = $request->data_agreement;
        $model->reg_numb = $request->reg_numb;
        $model->no_anggota = $request->no_anggota;
        $model->modified_by = $modified_by;                         //edit modified_by
        $model->save();                                             //menyimpan hasil editan data
    }

    public function dataTable(){                                    //generate table di halaman Admin - Mitra
        $model = Mitra::query();                                    //mengambil semua data mitra
        return DataTables::of($model)                               //membuat datatable berdasarkan data yg udh diambil
            ->addColumn('action', function($model){                 //nambahin yg gak ada di query, disini yg ditambah action
                return view('Layouts.ActionMitra',[
                    'model'=> $model,
                    'url_edit' => route('mitra.edit', $model->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }
}

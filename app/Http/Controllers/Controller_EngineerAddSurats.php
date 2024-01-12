<?php

namespace App\Http\Controllers;

use App\Surat;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Controller_EngineerAddSurats extends Controller
{
    public function openPage(){             //buka halaman Manager - Assign
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $mitras = DB::select("select * from mitras order by nama_mitra asc");           //ngambil data semua mitra
        $users = $this->getUser();                                                      //ngambil data engineer dan adminxengineer
        
        return view('Pages.Engineer.View_EngineerAddProjectsSurat', compact('userLevel', 'mitras', 'users'));
    }

    public function storeNew(Request $request){                         //tambah data projek baru
        $this->authorize('isEngineer', auth()->user());

        $request->validate([                                            //validasi data input projek
            'id_mitra' => 'required',
            'waktu_assign_surat' => 'required',
            'perihal' => 'required',
        ],
        $message = [
            
            'id_mitra.required' => 'Mohon pilih nama mitra',
            'waktu_assign_surat.required' => 'Mohon isi Issued Date',
            'perihal.required' => 'Mohon isi Perihal',

        ]);

        $added_by = Auth::user()->inisial_user;

        // No Urutan
        // format waktu_assign_surat -> YYYY-DD-MM dengan tiper data string. contoh 16 Maret 2024 = 2024-03-16
        // format nomor surat: Sek.ASPI/SR/(urutan)/(bulan dalam angka romawi)/(tahun)
        $suratNew = new Surat();

        $year = substr($request->waktu_assign_surat, 0, 4);
        $month = substr($request->waktu_assign_surat, 5, 2);
        $monthInRoman = $this->convertToRoman((int)$month);
        
        if($suratNew->id != null){
            $lastUrutan = $suratNew->orderBy('id', 'desc')->first();
            $newUrutan = $this->generateUrutanBaru(substr($lastUrutan->no_surat, 12, 3),substr($lastUrutan->waktu_assign_surat, 0, 4),$year);
        }
        else $newUrutan = "001";

        $nomorSurat = "Sek.ASPI/SR/" . $newUrutan . "/" . $monthInRoman . "/" . $year;

        //No Unik
        $loop = rand(5,7);
        $randomNumber = "";

        for($i = 0; $i<$loop; $i++){
            $randomUnit = rand(0,999);
            $randomNumber .= $randomUnit;

            if($i != $loop-1){
                $randomNumber .= ".";
            }
            else{
                break;
            }
        }
        
        $newprojectsurat = Surat::create([ 
            'id_mitra' => $request->id_mitra,   
            'no_unik'  => $randomNumber,                   
            'no_surat' => $nomorSurat,
            'perihal' => $request->perihal,
            'waktu_assign_surat' => $request->waktu_assign_surat,
            'added_by' => $added_by,
        ]);

        return redirect('/engineer/surat')->with('success','No Surat berhasil di tambahkan');
    }

    public function getUser(){                                      //ngambil data user engineer dan adminxengineer
        return User::select(DB::raw('*'))->whereIn('id_ulevel', [1, 2, 4, 5])->get();
    }

    public function getSuratById($id){                                        //ngamabil data projek berdasarkan idnya
        return Surat::where('id', $id)->firstOrFail();
    }

    public function convertToRoman($integer){
        // Convert the integer into an integer (just to make sure).
        $integer = intval($integer);
        $result = '';

        // Create a lookup array that contains all of the Roman numerals.
        $lookup = [
            'M' => 1000,
            'CM' => 900,
            'D' => 500,
            'CD' => 400,
            'C' => 100,
            'XC' => 90,
            'L' => 50,
            'XL' => 40,
            'X' => 10,
            'IX' => 9,
            'V' => 5,
            'IV' => 4,
            'I' => 1
        ];

        foreach ($lookup as $roman => $value) {
            // Determine the number of matches.
            $matches = intval($integer / $value);

            // Add the same number of characters to the string.
            $result .= str_repeat($roman, $matches);

            // Set the integer to be the remainder of the integer and the value.
            $integer = $integer % $value;
        }

        // The Roman numeral should be built, return it.
        return $result;
    }

    public function generateUrutanBaru($lastUrutan, $lastYear, $currentYear){
        if($lastYear == $currentYear){                        //kalo tahunnya sama, maka urutannya ditambah
            $newUrutan = (int)substr($lastUrutan, 2, 1) + 1;  //urutan terbaru dalam bentuk integer
            for($i = 0; $i <= 3-strlen($newUrutan); $i++){    //kasih di depan buat nomor yang butuh 0, misal 16 diubah jadi 016
                $newUrutan = (string)("0" . $newUrutan);
            }

            return $newUrutan;
        }
        else return "001";                                    //kalo tahunnya udh ganti, maka urutannya reset
    }
}

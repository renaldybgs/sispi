<?php

namespace App\Http\Controllers;

use App\Suratpja;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Controller_EngineerAddSuratPjas extends Controller
{
    public function openPage(){             //buka halaman Manager - Assign
        //Autentikasi level user yg boleh msk
        $this->authorize('isEngineer', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        $mitras = DB::select("select * from mitras order by nama_mitra asc");           //ngambil data semua mitra
        $users = $this->getUser();                                                      //ngambil data engineer dan adminxengineer
        
        return view('Pages.Engineer.View_EngineerAddProjectsSuratPja', compact('userLevel', 'mitras', 'users'));
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
        $newSurat = new Surat();
        $lastUrutan = $newSurat->orderBy('id', 'desc')->first();    //ambil data buat dijadiin patokan urutan baru

        $year = substr($request->waktu_assign_surat, 0, 4);     //ambil tahun
        $month = substr($request->waktu_assign_surat, 5, 2);    //ambil bulan
        $monthInRoman = $this->convertToRoman((int)$month);     //ubah bulan ke bentuk angka romawi
        
        if($lastUrutan != null) $newUrutan = $this->generateUrutanBaru(substr($lastUrutan->no_surat, 12, 3),substr($lastUrutan->waktu_assign_surat, 0, 4),$year);   //cek db kosong atau gak. kalo gak kosong, maka generate nomor urutan baru
        else $newUrutan = "001";                //kalo db kosong, set urutan ke 001

        $nomorSurat = "Sek.ASPI/STT/" . $newUrutan . "/" . $monthInRoman . "/" . $year;

        // No Unik
        // formatnnya adalah 5 - 7 angka dengan range angka 0 - 999 yang antara digitnya dipisahkan oleh titik. 
        // contoh no unik: 16.3.1996.777.69 
        $loop = rand(5,7);                  //randomize jumlah angka
        $randomNumber = "";

        for($i = 0; $i<$loop; $i++){        //lakukan loop sejumlah jumlah angka
            $randomUnit = rand(0,9);      //randomize angka
            $randomNumber .= $randomUnit;   //angka pertama dimasukkan ke dalam variabel akhir

            if($i != $loop-1){              //loop sesuai dengan jumlah angka - 1
                $randomNumber .= ".";       //tambahkan pembatas berupa titik setelah angka
            }
            else{
                break;                      //jika sudah diangka terakhir, maka jangan tambahkan titik
            }
        }
        
        $newprojectsurat = Suratpja::create([ 
            'id_mitra' => $request->id_mitra,   
            'no_unik'  => $randomNumber,                   
            'no_surat' => $nomorSurat,
            'perihal' => $request->perihal,
            'waktu_assign_surat' => $request->waktu_assign_surat,
            'added_by' => $added_by,
        ]);

        return redirect('/engineer/suratpja')->with('success','No Surat berhasil di tambahkan');
    }

    public function getUser(){                                      //ngambil data user engineer dan adminxengineer
        return User::select(DB::raw('*'))->whereIn('id_ulevel', [1, 2, 4, 5])->get();
    }

    public function getSuratById($id){                                        //ngamabil data projek berdasarkan idnya
        return Suratpja::where('id', $id)->firstOrFail();
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
            $newUrutan = (string)(((int)$lastUrutan) + 1);              //urutan terbaru dalam bentuk integer
            $newUrutanLength = strlen($newUrutan);
            while($newUrutanLength != 3){    //kasih di depan buat nomor yang butuh 0, misal 16 diubah jadi 016
                $newUrutan = "0" . $newUrutan;
                $newUrutanLength = strlen($newUrutan);
            }

            return $newUrutan;
        }
        else return "001";                                    //kalo tahunnya udh ganti, maka urutannya reset
    }
}
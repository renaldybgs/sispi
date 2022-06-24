<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\MessageBag;

class Controller_Login extends Controller
{
    public function openLogin(){                        //buka halaman login
    	return view('View_Login');
    }
    
    public function openChooseLogin(){                          //buka halaman buat milih hak akses khusus admin x engineer
        $userLevel = auth()->user()->id_ulevel;
        if($userLevel == 4){                            
            return view('View_Login5ChooseRole');   
        }
        else{
            return redirect('/logout');
        }
    }

    public function openDeveloperHub(){
        $userLevel = auth()->user()->id_ulevel;
        if($userLevel == 6){                            
            return view('View_DeveloperHub');   
        }
        else{
            return redirect('/logout');
        }
    }

    public function authenticate(Request $request){             //autentikasi data login
        // dd($request->all()); 
        $request->validate([                                    //validasi data login    
            'email' => 'required|email|regex:/^[A-Za-z\.]*@(aspi-indonesia)[.](or)[.](id)$/',
            'password' => 'required'
        ],
        $message = [
            'email.required' => 'Mohon isi Email',
                'email.regex'=>'Mohon isi format email dengan benar (domain @aspi-indonesia.or.id)',
            'password.required' => "Mohon isi Password",
        ]);

        // $ldap_con = ldap_connect("10.90.2.253");                //inisialisasi ip koneksi ldap
        $email = $request->email;                               //menyimpan data email dari input login
        $password = $request->password;                         //menyimpan data password dari input login

        // if(@ldap_bind($ldap_con, $email, $password)){           //start koneksi ldap, if true (data email dan password match), maka
        $hashedpassword = Hash::make($password);            //buat password tersebut menjadi bentuk hash untuk dimasukkan ke tabel user

            $user = User::where('email_user', $email)->first(); //ambil data user berdasarkan email
            if($user == null){                                  //kalo datanya tidak ada di db kodok, maka
                $user = User::create([                          //maka simpan data baru    
                    'id_ulevel' => '3',
                    'beban_approve' => '1',
                    'nama_user' => 'Guest',
                    'email_user' => $email,
                    'inisial_user' => 'GST',
                    'password' => $password,
                    'added_by' => 'Aspi'
                ]);
                
                // $user = User::where('email_user', $email)->firstOrFail();   //ngambil data user karena $user isinya NULL makanya butuh diisi lagi sama data baru
            }

            $user->password = $hashedpassword;                  //masukkan password yg sudah dihash
            $user->save();                                      //save data user

            $credentials = array('email_user' => $email, 'password' => $password);  //buat variabel untuk autentikasi dari laravel

            if(Auth::attempt($credentials)){                    //auth laravel
                switch($user->id_ulevel){                       //redirect berdasarkan levele user yg login
                    case '1':
                        return redirect('/admin/users');
                    // case '2':
                    //     return redirect('/manager/home');
                    case '2':
                        return redirect('/engineer/projects');
                    case '3':
                        return redirect('/logout');
                    case '4':
                        return redirect('/login/choose');
                    case '5':
                        return redirect('/eksekutif/home');
                    case '6':
                        return redirect('/login/developer');
                }
            } 
            
        else{
            return redirect("/")->withErrors('Username / Password yang Anda Masukkan Salah');
        }
    }

    public function logout(){
        Auth::logout();

        return redirect('/');
    }
}

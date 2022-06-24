<?php

use App\Users_Level;
use Illuminate\Database\Seeder;

class UsersLevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Users_Level::create([
        	'nama_ulevel' => 'Admin'
        ]);

        $sertifikasi = Users_Level::create([
        	'nama_ulevel' => 'Sertifikasi'
        ]);

        $guest = Users_Level::create([
        	'nama_ulevel' => 'Guest'
        ]);

        $adminxsertif = Users_Level::create([
        	'nama_ulevel' => 'Admin x Sertifikasi'
        ]);

        $eksekutif = Users_Level::create([
            'nama_ulevel' => 'Eksekutif'
        ]);

        $developer = Users_Level::create([
            'nama_ulevel' => 'Developer'
        ]);
    }
}

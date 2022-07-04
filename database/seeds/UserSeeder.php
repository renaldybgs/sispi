<?php

use App\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user0 = User::create([
            'id_ulevel' => 4,
            'nama_user' => 'Lily',
            'email_user' => 'lsuliandari@aspi-indonesia.or.id',
            'inisial_user' => 'LSL',
            'added_by' => 'ASPI',
        ]);

        $user1 = User::create([
            'id_ulevel' => 4,
            'nama_user' => 'Rey',
            'email_user' => 'renaldy@aspi-indonesia.or.id',
            'inisial_user' => 'RBB',
            'added_by' => 'ASPI',
        ]);

        $user2 = User::create([
            'id_ulevel' => 4,
            'nama_user' => 'Nesta',
            'email_user' => 'ernestaputri@aspi-indonesia.or.id',
            'inisial_user' => 'ENP',
            'added_by' => 'ASPI',
        ]);

    }
}

<?php

use App\Projects_Stat;
use Illuminate\Database\Seeder;

class ProjectsStatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $reserve = Projects_Stat::create([
        	'nama_pstat' => 'Reserve'
        ]);
 
        $pifreview = Projects_Stat::create([
        	'nama_pstat' => 'PIF-Review'
        ]);

        $piftobesigned = Projects_Stat::create([
        	'nama_pstat' => 'PIF to be signed'
        ]);

        $qoutation = Projects_Stat::create([
        	'nama_pstat' => 'Qoutation'
        ]);

        $pifreceived = Projects_Stat::create([
        	'nama_pstat' => 'PIF-Received'
        ]);

        $ctfnew = Projects_Stat::create([
            'nama_pstat' => 'CTF-New'
        ]);

        $ctfsendtolab = Projects_Stat::create([
            'nama_pstat' => 'CTF-Send to Lab'
        ]);

        $reportreceived = Projects_Stat::create([
            'nama_pstat' => 'Report Received'
        ]);

        $compliancerequestnew = Projects_Stat::create([
            'nama_pstat' => 'Compliance Request New'
        ]);

        $compliancerequestsigned = Projects_Stat::create([
            'nama_pstat' => 'Compliance Request Signed'
        ]);

        $Reviewed = Projects_Stat::create([
            'nama_pstat' => 'Reviewed'
        ]);

        $loanew = Projects_Stat::create([
            'nama_pstat' => 'Loa-New'
        ]);

        $loasend = Projects_Stat::create([
            'nama_pstat' => 'Loa-Send'
        ]);

        $invoicesend = Projects_Stat::create([
            'nama_pstat' => 'Invoice Send'
        ]);

        $cancel = Projects_Stat::create([
            'nama_pstat' => 'Cancel'
        ]);
        
        $done = Projects_Stat::create([
            'nama_pstat' => 'Done'
        ]);

        $terimadokumen = Projects_Stat::create([
            'nama_pstat' => 'Terima Dokumen'
        ]);

        $perbaikan = Projects_Stat::create([
            'nama_pstat' => 'Perbaikan'
        ]);

        $pengajuanpersetujuan = Projects_Stat::create([
            'nama_pstat' => 'Pengajuan Persetujuan'
        ]);

        $suratrekomendasi = Projects_Stat::create([
            'nama_pstat' => 'Surat Rekomendasi'
        ]);

        $formulirpermohonan = Projects_Stat::create([
            'nama_pstat' => 'Formulir Permohonan'
        ]);

        $suratpersetujuan = Projects_Stat::create([
            'nama_pstat' => 'Surat Persetujuan'
        ]);
    }
}

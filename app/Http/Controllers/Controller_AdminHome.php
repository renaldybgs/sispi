<?php

namespace App\Http\Controllers;

use App\User;
use App\Project;
use App\Product;
use App\Mitra;
use App\Qris;
use App\Qrisspek;
use App\cas;
use App\Ipkc;
use Illuminate\Http\Request; 
use Illuminate\Support\Facades\DB;

class Controller_AdminHome extends Controller
{
    public function openAllDataPage(){                  //Buka halaman home dengan all data
        $this->authorize('isAdmin', auth()->user());

        $userLevel = auth()->user()->id_ulevel;
        //YEAR DATA
        $years = $this->getYears();                 //Ngambil data tahun buat ditampilin di dropdown filter tahun

        //HIGHCHARTS DATA
        //ESSENTIAL COUNTER
        $products = $this->getProducts();           //Data All Product
        $mitras = $this->getMitras();      
        $inuser = $this->getInisial();              //Data All Inisial  
        $cas = $this->getCas();    

        // CARD DATA

        $pprjdone = $this->allProjectPstat(16);      // Projek Done NSICCS
        $projects = $this->allProjects();           // Jumlah All Projek NSICCS
        $qrdone = $this->allQrisPstat(16);        // Projek Done QRIS
        $qris = $this->allQris();                   // Jumlah All Projek QRIS
        $qrsdone = $this->allQrisspekPstat(16);        // Projek Done QRIS Spek
        $qrisspek = $this->allQrisspek();            // Jumlah All Projek QRIS
        $anggota = $this->allAnggota();
        $noanggota = $this->allNoAnggota();
        $regcas = $this->allregcas();
        $regipkc = $this->allregipkc();
        $ipkctest = $this->allipkctest();
        $ipkclive = $this->allipkclive();

        // $atmproj = $this->allProjectPprod(1); 
        // $cardproj = $this->allProjectPprod(2);  
        // $cptproj = $this->allProjectPprod(3);
        // $edcproj = $this->allProjectPprod(4);
        // $persoproj = $this->allProjectPprod(5); 

        // $percentrsrv = $this->toPercent($preserved, $projects); // 1. Persentase Projek Reserved
        // $percentop = $this->toPercent($ponprogress, $projects); // 2. Persentase Projek On Progress
        // $percentpgdn = $this->toPercent($ppngdone, $projects);  // 3. Persentase Projek Pengujian Done
        // $percentmntr = $this->toPercent($pmonitor, $projects);  // 4. Persentase Projek Monitoring
        // $percentprdn = $this->toPercent($pprjdone, $projects);  // 5. Persentase Projek Projek Done
        // $percenthold = $this->toPercent($phold, $projects);     // 6. Persentase Projek Hold
        // $percentdrop = $this->toPercent($pdrop, $projects);     // 7. Persentase Projek Drop

        //GRAPH DATA
        // $pstatperproduct = $this->allPstatProd();               // 1. jumlah p_stat dari masing2 produk
        // $pstatperptype = $this->allPstatPtype();                // 2. jumlah p_stat dari masing2 p_type
        $projectperproduct = $this->allProjProd();              // 3. total all projek berdasarkan produk
        $qrisperproduct = $this->allQrisProd();              // 3. total all projek Qris berdasarkan produk
        $qrisspekperproduct = $this->allQrisspekProd();   // 3. total all projek Qrisspek berdasarkan produk
        
        $projperprod = $this->allProjDd();              // 3. total all projek Done berdasarkan produk
        $qrisperprod = $this->allQrisPd();              // 3. total all projek Qris Done berdasarkan produk
        $qrspekperprod = $this->allQrisspekDd();   // 3. total all projek Qrisspek Done berdasarkan produk

        // $projectperptype =  $this->allProjPtype();              // 4. total all projek berdasarkan p_type
        // $userprojectperpstat = $this->allEngineerPstat();       // 5. total projek per orang berdasarkan p_stat
        // $userprojectperptype = $this->allEngineerPtype();       // 6. total prokek per orang berdasarkan p_type

        // dd($inuser);

        return view('Pages.Admin.View_AdminHome', compact('userLevel', 'products', 'projects', 'mitras', 'pprjdone', 'qrdone', 'qris', 'qrsdone', 'qrisspek', 'projectperproduct', 'qrisperproduct', 'qrisspekperproduct', 'anggota', 'noanggota', 'projperprod', 'qrisperprod', 'qrspekperprod', 'cas', 'regcas', 'ipkclive', 'ipkctest', 'regipkc'));   	
    }

    public function getYears(){
        return DB::select("select YEAR(waktu_assign_project) as tahun from projects where YEAR(waktu_assign_project) = YEAR(current_timestamp) or id_pstat not in (15, 16) group by tahun order by tahun desc");
    }

    public function getProducts(){
        return DB::select('select nama_product from products');
    }

    public function getMitras(){
        return DB::select('select nama_mitra from mitras');
    }

    public function getCas(){
        return DB::select('select nama_issuer from cas');
    }

    public function getPTypes(){
        return DB::select('select nama_ptype from projects_types');
    }

    public function getInisial(){
        return DB::select('select inisial_user from users where id_ulevel in (3, 5, 10) and status_user = 1 order by inisial_user asc');
    }

    public function allProjectPstat($pstat){
        return DB::table('projects')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project')
            ->orWhereNotIn('id_pstat', [16]);
        })
        ->where('id_pstat', $pstat)
        ->count();
    }

    // public function allProjectPprod($pprod){
    //     return DB::table('projects')
    //     ->where(function($query){
    //         $query->whereRaw('YEAR(waktu_assign_project) = YEAR(current_timestamp)')
    //         ->orWhereIn('id_product  ');
    //     })
    //     ->where('id_product', $pprod)
    //     ->count();
    // }



    public function allQrisPstat($pstat){
        return DB::table('qris')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project')
            ->orWhereNotIn('id_pstat', [16]);
        })
        ->where('id_pstat', $pstat)
        ->count();
    }

    public function allQrisspekPstat($pstat){
        return DB::table('qrisspeks')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project')
            ->orWhereNotIn('id_pstat', [16]);
        }) 
        ->where('id_pstat', $pstat)
        ->count();
    }

    public function allNoAnggota(){
        return DB::table('mitras')
        ->where(function($query){
            $query->whereRaw('nama_mitra')
            ->orWhereNotIn('keanggotaan', ['Anggota']);
        })
        ->count();
    }

    public function allAnggota(){
        return DB::table('mitras')
        ->where(function($query){
            $query->whereRaw('nama_mitra')
            ->orWhereIn('keanggotaan', ['Anggota']);
        })
        ->count();
    }

    public function allipkclive(){
        return DB::table('ipkcs')
        ->where(function($query){
            $query->WhereIn('jenis_ipkc', ['IPKC Live']);
        })
        ->count();
    }

    public function allipkctest(){
        return DB::table('ipkcs')
        ->where(function($query){
            $query->WhereIn('jenis_ipkc', ['IPKC Test']);
        })
        ->count();
    }

    public function allProjects(){
        return DB::table('projects')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project')
            ->orWhereNotIn('id_pstat', [16]);
        })
        ->count();
    }

    public function allregcas(){
        return DB::table('cas')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project');
        })
        ->count();
    }

    public function allregipkc(){
        return DB::table('ipkcs')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project');
        })
        ->count();
    }

    public function allQris(){
        return DB::table('qris')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project')
            ->orWhereNotIn('id_pstat', [16]);
        })
        ->count();
    }

    public function allQrisspek(){
        return DB::table('qrisspeks')
        ->where(function($query){
            $query->whereRaw('waktu_assign_project')
            ->orWhereNotIn('id_pstat', [16]);
        })
        ->count();
    }

    // public function allPstatProd(){
    //     return DB::select("select psr.nama_pstat, psr.nama_product, count(prp.nama_project) as jumlah_project from (select ps.id as id_pstat, ps.nama_pstat, pr.id as id_product, pr.nama_product from projects_stats as ps, products as pr order by ps.id asc, pr.id asc) as psr left outer join (select p.id_pstat, p.id_product, p.nama_project from (select nama_project, id_product, id_pstat from projects where YEAR(waktu_assign_project) = YEAR(current_timestamp) or id_pstat not in (5,7)) as p left outer join products as pr on p.id_product = pr.id order by p.id_pstat asc) as prp ON prp.id_pstat = psr.id_pstat and prp.id_product = psr.id_product group by psr.id_pstat, psr.id_product order by psr.id_pstat");
    // }

    // public function allPstatPtype(){
    //     return DB::select("select pst.nama_pstat, pst.nama_ptype, count(ptp.nama_project) as jumlah_project from (select ps.id as id_pstat, ps.nama_pstat, pt.id as id_ptype, pt.nama_ptype from projects_stats as ps, projects_types as pt order by ps.id asc, pt.id asc) as pst left outer join (select p.id_pstat, p.id_ptype, p.nama_project from (select nama_project, id_ptype, id_pstat from projects where YEAR(waktu_assign_project) = YEAR(current_timestamp) or id_pstat not in (5,7)) as p left outer join projects_types as pt on p.id_ptype = pt.id order by p.id_pstat asc) as ptp ON ptp.id_pstat = pst.id_pstat and ptp.id_ptype = pst.id_ptype group by pst.id_pstat, pst.id_ptype order by pst.id_pstat");
    // }

    public function allProjProd(){
        return DB::select("select pr.nama_product, count(*) as jumlah_project from (select id_product from projects where waktu_assign_project and id_pstat not in (16)) as p, products as pr where p.id_product = pr.id group by pr.nama_product order by pr.id asc");
    }

    public function allProjDd(){
        return DB::select("select pr.nama_product, count(*) as jumlah_project from (select id_product from projects where waktu_assign_project and id_pstat in (16) ) as p, products as pr where p.id_product = pr.id group by pr.nama_product order by pr.id asc");
    }

    public function allQrisProd(){
        return DB::select("select pr.nama_product, count(*) as jumlah_project from (select id_product from qris where waktu_assign_project and id_pstat not in (16)) as p, products as pr where p.id_product = pr.id group by pr.nama_product order by pr.id asc");
    }

    public function allQrisPd(){
        return DB::select("select pr.nama_product, count(*) as jumlah_project from (select id_product from qris where waktu_assign_project and id_pstat in (16)) as p, products as pr where p.id_product = pr.id group by pr.nama_product order by pr.id asc");
    }

    public function allQrisspekProd(){
        return DB::select("select pr.nama_product, count(*) as jumlah_project from (select id_product from qrisspeks where waktu_assign_project and id_pstat not in (16)) as p, products as pr where p.id_product = pr.id group by pr.nama_product order by pr.id asc");
    }


    public function allQrisspekDd(){
        return DB::select("select pr.nama_product, count(*) as jumlah_project from (select id_product from qrisspeks where waktu_assign_project and id_pstat in (16)) as p, products as pr where p.id_product = pr.id group by pr.nama_product order by pr.id asc");
    }
    // public function allProjPtype(){
    //     return DB::select("select pt.nama_ptype, count(*) as jumlah_project from (select id_ptype from projects where YEAR(waktu_assign_project) = YEAR(current_timestamp) or id_pstat not in (5,7)) as p, projects_types as pt where p.id_ptype = pt.id group by pt.nama_ptype order by pt.id asc");
    // }

    // public function allEngineerPstat(){
    //     return DB::select("select ups.inisial_user, ups.nama_pstat, count(pu.nama_project) jumlah_projek from (select u.id as id_current_pic, u.inisial_user, ps.id as id_pstat, ps.nama_pstat from users as u, projects_stats as ps where u.id_ulevel in (3,5,10) and u.status_user = 1 group by u.id, u.inisial_user, ps.id, ps.nama_pstat order by u.inisial_user asc, ps.id asc) as ups left outer join (select p.id_current_pic, p.id_pstat, p.nama_project from (select nama_project, id_current_pic, id_pstat from projects where YEAR(waktu_assign_project) = YEAR(current_timestamp) or id_pstat not in (5,7)) p left outer join users as u on u.id = p.id_current_pic) as pu on pu.id_current_pic = ups.id_current_pic and pu.id_pstat = ups.id_pstat group by ups.nama_pstat, ups.inisial_user order by ups.inisial_user asc, ups.nama_pstat desc");
    // }

    // public function allEngineerPtype(){
    //     return DB::select("select upt.inisial_user, upt.nama_ptype, count(pu.nama_project) jumlah_projek from (select u.id as id_current_pic, u.inisial_user, pt.id as id_ptype, pt.nama_ptype from users as u, projects_types as pt where u.id_ulevel in (3,5,10) and u.status_user = 1 group by u.id, u.inisial_user, pt.id, pt.nama_ptype order by u.inisial_user asc, pt.id asc) as upt left outer join (select p.id_current_pic, p.id_ptype, p.nama_project from (select nama_project, id_current_pic, id_ptype from projects where YEAR(waktu_assign_project) = YEAR(current_timestamp) or id_pstat not in (5,7)) p left outer join users as u on u.id = p.id_current_pic) as pu on pu.id_current_pic = upt.id_current_pic and pu.id_ptype = upt.id_ptype group by upt.nama_ptype, upt.inisial_user order by upt.inisial_user asc, upt.id_ptype asc");
    // }

    public function toPercent($part, $total){           //return persentase data input
        if($total == 0){
            $total = 1;
        }

        return number_format(($part*100)/$total, 2, '.', ',');
    }
}

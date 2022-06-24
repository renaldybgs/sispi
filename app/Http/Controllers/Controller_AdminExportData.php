<?php

namespace App\Http\Controllers;

use DataTables;
use App\Exports\MitrasExport;
use App\Exports\ProductsExport;
use App\Exports\ProjectsExport;
use App\Exports\ProjectsHandoversExport;
use App\Exports\ProjectsKeterangansExport;
use App\Exports\ProjectsStatusExport;
use App\Exports\ProjectsTypesExport;
use App\Exports\UsersExport;
use App\Exports\UsersLevelsExport;
use App\Imports\DocumentsExport;

use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class Controller_AdminExportData extends Controller
{
    public function openPage(){
    	$userLevel = auth()->user()->id_ulevel;
    	if($userLevel == 1 || $userLevel == 5 || $userLevel == 11){                                //Autentikasi level user yg boleh msk
            return view('Pages.Admin.View_AdminExportData', compact('userLevel'));  
        }
        else{
            return redirect('/logout');
        }
    }

    // public function exportDocument(){
    // 	return (new DocumentsExport)->download('[DB Kodok] documents');
    // }

    public function exportMitra(){
        $this->authorize('isAdmin', auth()->user());
    	return (new MitrasExport)->download('[DB Kodok] mitras.xlsx');
    }

    public function exportProduct(){
    	$this->authorize('isManager', auth()->user());
        return (new ProductsExport)->download('[DB Kodok] products.xlsx');
    }

    public function exportProject(){
        $this->authorize('isAdmin', auth()->user());
    	return (new ProjectsExport)->download('[DB Kodok] projects.xlsx');
    }

    public function exportHandover(){
        $this->authorize('isAdmin', auth()->user());
    	return (new ProjectsHandoversExport)->download('[DB Kodok] projects_handovers.xlsx');
    }

   	public function exportPKeterangan(){
        $this->authorize('isAdmin', auth()->user());
    	return (new ProjectsKeterangansExport)->download('[DB Kodok] projects_keterangans.xlsx');
    }

    public function exportPStatus(){
        $this->authorize('isAdmin', auth()->user());
    	return (new ProjectsStatusExport)->download('[DB Kodok] projects_stats.xlsx');
    }

    public function exportPType(){
        $this->authorize('isAdmin', auth()->user());
    	return (new ProjectsTypesExport)->download('[DB Kodok] projects_types.xlsx');
    }

    public function exportUser(){
        $this->authorize('isAdmin', auth()->user());
    	return (new UsersExport)->download('[DB Kodok] users.xlsx');
    }

    public function exportULevel(){
        $this->authorize('isAdmin', auth()->user());
    	return (new UsersLevelsExport)->download('[DB Kodok] users_levels.xlsx');
    }

    public function store(Request $request){
        $this->authorize('isAdmin', auth()->user());

        $file = $request->file('file')->store('Imported Data');

        $import = new ProjectsImport;
        $import->import($file);

        return back()->with('success','Project Berhasil di Imported');
    }
}

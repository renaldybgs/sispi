<?php

namespace App\Exports;

use App\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Events\BeforeExport;
use Maatwebsite\Excel\Events\AfterSheet;

class ProjectNsiccsExport implements FromQuery, ShouldAutoSize, WithHeadings, WithEvents
{
	use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function query()
    {
    	return DB::table('projects')
    	->select(DB::raw('projects.id, DATE(projects.waktu_assign_project) as waktu, products.nama_product, mitras.nama_mitra, projects.nama_prod, projects.typereg_numb, projects_stats.nama_pstat, projects.security_lab, projects.lab, DATE(projects.pif) as pif, DATE(projects.ctf) as ctf, DATE(projects.report_lab) as report_lab, DATE(projects.complience_req) as complience_req, DATE(projects.loa_new) as loa_new, DATE(projects.loa_sent) as loa_sent, projects.number_special, projects.identification_num, projects.certification_no, projects.notes_project'))
    	->leftjoin('products', 'projects.id_product', '=', 'products.id')
        ->leftjoin('projects_stats', 'projects.id_pstat', '=', 'projects_stats.id')
    	->leftjoin('mitras', 'projects.id_mitra', '=', 'mitras.id')
    	->orderBy('id', 'asc');
    }

    public function headings(): array{
    	return[
    		'No',
    		'Issued Date',
    		'Nama Product',
    		'Institusi',
    		'Product Name',
            'Product Registration Number',
    		'Status',
            'Secuity Lab',
            'Functional Lab', 
    		'PIF',
            'CTF',
            'Report Lab',
            'Compliance Request',
            'LOA New',
            'LOA Sent',
            'Number Special',
            'Identification Number',
            'Certification Number',
            'Notes Project'
    	];	
    }

    public function registerEvents(): array{
    	return[
    		BeforeExport::class => function(BeforeExport $event) {
                $event->writer->getProperties()->setCreator('Sispi');
            },

    		AfterSheet::class => function(AfterSheet $event){
    			$event->sheet->getStyle('A1:S1')->applyFromArray([
    				'font' => [
    					'bold' => true
    				],
    				'fill' => [
    					'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
    					'startColor' => [
				            'argb' => '99ccff',
				        ],
    				]
    			]);

    			// $event->sheet->getStyle('A1:H50')->applyFromArray([
    			// 	'borders' => [
    			// 		'allBorders' => [
    			// 			'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
    			// 		]
    			// 	]
    			// ]);
    		}
    	];
    }
}

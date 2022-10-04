<?php

namespace App\Exports;

use App\Qrisspek;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Events\BeforeExport;
use Maatwebsite\Excel\Events\AfterSheet;

class QrisspekExport implements FromQuery, ShouldAutoSize, WithHeadings, WithEvents
{
	use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function query()
    {
    	return DB::table('qrisspeks')
            ->select(DB::raw('qrisspeks.id, DATE(qrisspeks.waktu_assign_project) as waktu, products.nama_product, mitras.nama_mitra, qrisspeks.no_formulir, qrisspeks.no_spek, DATE(qrisspeks.spek_qris) as spek_qris, projects_stats.nama_pstat, qrisspeks.notes_project, DATE(qrisspeks.last_updated) as last_updated'))
            ->leftjoin('products', 'qrisspeks.id_product', '=', 'products.id')
            ->leftjoin('mitras', 'qrisspeks.id_mitra', '=', 'mitras.id')
            ->leftjoin('projects_stats', 'qrisspeks.id_pstat', '=', 'projects_stats.id')
            ->orderBy('id','asc');  
    }

    public function headings(): array{
    	return[
    		'No',
    		'Issued Date',
    		'Nama Product',
    		'Nama Institusi',
            'No Formulir',
            'No Spesifikasi',
            'Tanggal Spesifikasi',
            'Status',
            'Notes Project',
            'Last Updated'
    	];	
    }

    public function registerEvents(): array{
    	return[
    		BeforeExport::class => function(BeforeExport $event) {
                $event->writer->getProperties()->setCreator('Sispi');
            },

    		AfterSheet::class => function(AfterSheet $event){
    			$event->sheet->getStyle('A1:J1')->applyFromArray([
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

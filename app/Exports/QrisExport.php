<?php

namespace App\Exports;

use App\Qris;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Events\BeforeExport;
use Maatwebsite\Excel\Events\AfterSheet;

class QrisExport implements FromQuery, ShouldAutoSize, WithHeadings, WithEvents
{
	use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function query()
    {
    	return DB::table('qris')
            ->select(DB::raw('qris.id, DATE(qris.waktu_assign_project) as waktu, products.nama_product, mitras.nama_mitra, projects_stats.nama_pstat, qris.no_rekomendasi, DATE(qris.surat_rekomendasi) as surat_rekomendasi, qris.jenis_qrisbi, qris.ijin_qrisbi, DATE(tgl_ijinbi) as tgl_ijinbi, qris.notes_project, DATE(qris.last_updated) as last_updated'))
            ->leftjoin('products', 'qris.id_product', '=', 'products.id')
            ->leftjoin('mitras', 'qris.id_mitra', '=', 'mitras.id')
            ->leftjoin('projects_stats', 'qris.id_pstat', '=', 'projects_stats.id')
            ->orderBy('id','asc');  
    }

    public function headings(): array{
    	return[
    		'#',
    		'waktu_assign_project',
    		'Nama Products',
    		'Nama Institusi',
            'Status',
            'No Rekomendasi',
            'Tanggal Rekomendasi',
            'Jenis Ijin BI',
            'Ijin BI',
            'Tanggal Ijin BI',
            'Notes Project',
            'Last Update'
    	];	
    }

    public function registerEvents(): array{
    	return[
    		BeforeExport::class => function(BeforeExport $event) {
                $event->writer->getProperties()->setCreator('Sispi');
            },

    		AfterSheet::class => function(AfterSheet $event){
    			$event->sheet->getStyle('A1:L1')->applyFromArray([
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

<?php

namespace App\Exports;

use App\Ipkc;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Events\BeforeExport;
use Maatwebsite\Excel\Events\AfterSheet;

class IpkcExport implements FromQuery, ShouldAutoSize, WithHeadings, WithEvents
{
	use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function query()
    {
    	return DB::table('ipkcs')
            ->select(DB::raw('ipkcs.id, DATE(ipkcs.waktu_assign_project) as waktu, cas.nama_issuer,  ipkcs.no_ipkc, ipkcs.jenis_ipkc, ipkcs.bin, projects_stats.nama_pstat, ipkcs.notes_project'))
            ->leftjoin('cas', 'ipkcs.id_ca', '=', 'cas.id')
            ->leftjoin('projects_stats', 'ipkcs.id_pstat', '=', 'projects_stats.id')
            ->orderBy('id','asc');  
    }

    public function headings(): array{
    	return[
    		'No',
    		'Issued Date',
    		'Nama Issuer',
            'No IPKC',
            'Jenis IPKC',
            'BIN',
            'Status',
            'Notes Project',
    	];	
    }

    public function registerEvents(): array{
    	return[
    		BeforeExport::class => function(BeforeExport $event) {
                $event->writer->getProperties()->setCreator('Sispi');
            },

    		AfterSheet::class => function(AfterSheet $event){
    			$event->sheet->getStyle('A1:H1')->applyFromArray([
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

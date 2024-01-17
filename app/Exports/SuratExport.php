<?php

namespace App\Exports;

use App\Surat;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Events\BeforeExport;
use Maatwebsite\Excel\Events\AfterSheet;

class SuratExport implements FromQuery, ShouldAutoSize, WithHeadings, WithEvents
{
	use Exportable;
    /**
    * @return \Illuminate\Support\Collection
    */
    public function query()
    {
        return DB::table('surats')
            ->select(DB::raw('surats.id, mitras.nama_mitra, surats.no_surat, surats.no_unik, surats.perihal, surats.notes_surat, surats.added_by, projects_stats.nama_pstat, Date(surats.waktu_assign_surat) as tanggal_surat, date(surats.last_updated) as last_updated'))
            ->leftjoin('mitras', 'surats.id_mitra', '=', 'mitras.id')
            ->leftjoin('projects_stats', 'surats.id_pstat', '=', 'projects_stats.id')
            ->orderBy('id', 'desc'); 
    }

    public function headings(): array{
    	return[
    		'No',
    		'Nama Institusi',
            'No Surat',
            'No Unik',
            'Perihal',
            'Catatan',
            'Dibuat',
            'Status',
            'Tanggal Surat',
            'Last Update'
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

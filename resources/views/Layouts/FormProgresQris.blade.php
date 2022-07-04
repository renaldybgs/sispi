{!! Form::model($qris, [
	'route' => ['progressqris.update', $qris->id],
	'method' => 'PUT'
]) !!}

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="no_rekomendasi" style="font-weight:bolder" style="margin-top: -30px">No Rekomendasi</label>
				<br>
			{!! Form::text('no_rekomendasi', null,
				['class'=> 'form-control',
					'id' =>'no_rekomendasi',
					'placeholder' => 'Masukan No Rekomendasi',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="jenis_qrisbi" style="font-weight:bolder" style="margin-top: -30px">Jenis Ijin BI</label>
				<br>
				{!! Form::select('jenis_qrisbi', [' '=> 'Pilih', 'Acquirer Kartu Kredit' => 'Acquirer Kartu Kredit', 'ATM' => 'ATM', 'Debet' => 'Debet', 'Dompet Elektronik' => 'Dompet Elektronik', 'E-walet' => 'E-walet', 'Payment Gateway' => 'Payment Gateway', 'Switching' => 'Switching', 'Unik' => 'Unik', 'Unik & Debet' => 'Unik & Debet', 'Sedang diproses' => 'Sedang diproses'], null,
					['class'=> 'form-control',
						'id' =>'jenis_qrisbi', 
						'style' =>'margin-bottom: 10px'
					]);
				!!}		
		</div>
	</div>
	


	<div class="form-group">
		<div class ="input-group-addon">
			<label for="notes_project" style="font-weight:bolder" style="margin-top: -30px">Notes</label>
				<br>
			{!! Form::textarea('notes_project', null,
				['class'=> 'form-control',
					'rows' => '2',
					'id' =>'notes_project',
					'placeholder' => 'Masukan Notes',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="ijin_qrisbi" style="font-weight:bolder" style="margin-top: -30px">Jenis Ijin BI</label>
				<br>
				{!! Form::select('ijin_qrisbi', [' '=> 'Pilih', 'Belum Dapat' => 'Belum Dapat', 'Sudah Dapat' => 'Sudah Dapat'], null,
					['class'=> 'form-control',
						'id' =>'ijin_qrisbi', 
						'style' =>'margin-bottom: 10px'
					]);
				!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="tgl_ijinbi" style="font-weight:bolder" style="margin-top: -30px">Tanggal Ijin BI</label>
				<br>
			{!! Form::date('tgl_ijinbi', null,
				['class'=> 'form-control',
					'id' =>'tgl_ijinbi',
					'placeholder' => 'Masukan Tanggal Ijin BI',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>
	

{!! Form::close() !!}
{!! Form::model($qris, [
	'route' => ['adminqris.update', $qris->id],
	'method' => 'PUT'
]) !!}
	
	<div class="form-group">
		<div class ="input-group-addon">
			<label for="waktu_assign_project" style="font-weight:bolder" style="margin-top: -30px">Tanggal Mulai</label>
				<br>
			{!! Form::date('waktu_assign_project', null,
				['class'=> 'form-control',
					'id' =>'waktu_assign_project',
					'placeholder' => 'Masukan Tanggal Mulai',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="id_mitra" style="font-weight:bolder" style="margin-top: -30px">Nama Institusi</label>
				<br>
				{!! Form::select('id_mitra', $listmitra, null, array(
				    'class' => 'form-control selectmitra',
				    'id' => 'nama_mitra',
				    'placeholder' => '',
				    'style' => 'Background: #ffff', 
				    )) 
				!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="id_product" style="font-weight:bolder" style="margin-top: -30px">Nama Product</label>
				<br>
				{!! Form::select('id_product', $listproduct, null, array(
				    'class' => 'form-control selectproduct',
				    'id' => 'nama_product',
				    'placeholder' => '', 
				    'style' => 'Background: #ffff',
				    )) 
				!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="no_rekomendasi" style="font-weight:bolder" style="margin-top: -30px">No Rekomendasi</label>
				<br>
			{!! Form::text('no_rekomendasi', null,
				['class'=> 'form-control',
					'id' =>'no_rekomendasi',
					'placeholder' => 'No Rekomendasi',  
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
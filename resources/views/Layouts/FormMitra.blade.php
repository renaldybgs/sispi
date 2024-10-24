{!! Form::model($model, [
	'route' => $model->exists ? ['mitra.update', $model->id] : 'mitra.store',
	'method' => $model->exists ? 'PUT' : 'POST'
]) !!}


	<div class="form-group">
		<div class ="input-group-addon">
			<label for="nama_mitra" style="font-weight:bolder" style="margin-top: -30px">Nama Institusi</label>
				<br>
			{!! Form::text('nama_mitra', null,
				['class'=>'form-control' .($errors->has('nama_mitra') ? 'is-invalid' : ''), 
					'id' =>'nama_mitra', 
					'placeholder' => 'Masukan Nama Institusi',
					'style' =>'margin-bottom: 10px'])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="jenis" style="font-weight:bolder" style="margin-top: -30px">Jenis</label>
				<br>
			{!! Form::select('jenis', [' '=> 'Pilih Jenis', 'PJA' => 'PJA', 'Bank' => 'Bank', 'Non Bank' => 'Non Bank', 'Fintek' => 'Fintek', 'Switching' => 'Switching', 'Vendor' => 'Vendor', 'Telekomunikasi' => 'Telekomunikasi'], null,
				['class'=> 'form-control',
					'id' =>'jenis', 
					'style' =>'margin-bottom: 10px'
				]);
			!!}		
			<!-- {!!$errors->first('nama_product','<div class="invalid-feedback flash">$message</div>')!!} -->
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="Keanggotaan" style="font-weight:bolder" style="margin-top: -30px">Keanggotaan</label>
				<br>
			{!! Form::select('keanggotaan', [' '=> 'Pilih', 'Anggota' => 'Anggota', 'Non Anggota' => 'Non Anggota'], null,
				['class'=> 'form-control',
					'id' =>'keanggotaan', 
					'style' =>'margin-bottom: 10px'
				]);
			!!}		
			<!-- {!!$errors->first('nama_product','<div class="invalid-feedback flash">$message</div>')!!} -->
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="alamat" style="font-weight:bolder" style="margin-top: -30px">Alamat</label>
				<br>
				{!! Form::text('alamat', null,
				['class'=>'form-control', 
					'rows' => '2',
					'id' =>'alamat', 
					'placeholder' => 'Masukan Alamat', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="nama_pic" style="font-weight:bolder" style="margin-top: -30px">Narahubung</label>
				<br>

			{!! Form::text('nama_pic', null,
				['class'=>'form-control', 
					'id' =>'nama_pic', 
					'placeholder' => 'Masukan Nama Narahubung', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>		

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="email" style="font-weight:bolder" style="margin-top: -30px">Email</label>
				<br>
			{!! Form::text('email', null,
				['class'=>'form-control', 
					'id' =>'email', 
					'placeholder' => 'Masukan Email', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="data_agreement" style="font-weight:bolder" style="margin-top: -30px">No Agreement</label>
				<br>
			{!! Form::text('data_agreement', null,
				['class'=>'form-control', 
					'id' =>'data_agreement', 
					'placeholder' => 'Masukan Nomor Data Agreement', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="req_numb" style="font-weight:bolder" style="margin-top: -30px">Registration Number</label>
				<br>
			{!! Form::text('reg_numb', null,
				['class'=>'form-control', 
					'id' =>'req_numb', 
					'placeholder' => 'Masukan Nomor Registration Number', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="no_anggota" style="font-weight:bolder" style="margin-top: -30px">No Keanggotaan</label>
				<br>
			{!! Form::text('no_anggota', null,
				['class'=>'form-control', 
					'id' =>'no_anggota', 
					'placeholder' => 'Masukan Nomor Keanggotaan', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>




{!! Form::close() !!}
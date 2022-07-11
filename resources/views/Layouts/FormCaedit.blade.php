{!! Form::model($model, [
	'route' => $model->exists ? ['ca.update', $model->id] : 'ca.store',
	'method' => $model->exists ? 'PUT' : 'POST'
]) !!}


	<div class="form-group">
		<div class ="input-group-addon">
			<label for="nama_issuer" style="font-weight:bolder" style="margin-top: -30px">Nama Issuer</label>
				<br>
			{!! Form::text('nama_issuer', null,
				['class'=>'form-control' .($errors->has('nama_issuer') ? 'is-invalid' : ''), 
					'id' =>'nama_issuer', 
					'placeholder' => 'Masukan Nama Issuer',
					'style' =>'margin-bottom: 10px'])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="bin" style="font-weight:bolder" style="margin-top: -30px">BIN</label>
				<br>
				{!! Form::text('bin', null,
				['class'=>'form-control', 
					'id' =>'bin', 
					'placeholder' => 'Masukan BIN', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="reg_ca" style="font-weight:bolder" style="margin-top: -30px">No Registrasi CA</label>
				<br>

			{!! Form::text('reg_ca', null,
				['class'=>'form-control', 
					'id' =>'reg_ca', 
					'placeholder' => 'Masukan No Registrasi CA', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>		

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="status" style="font-weight:bolder" style="margin-top: -30px">Status</label>
				<br>
			{!! Form::select('status', [' '=> 'Pilih', 'Formulir Sent' => 'Formulir Sent', 'Formulir Received' => 'Formulir Received', 'Done' => 'Done'], null,
				['class'=> 'form-control',
					'id' =>'status', 
					'style' =>'margin-bottom: 10px'
				]);
			!!}		
		</div>
	</div>

{!! Form::close() !!}
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
			<label for="waktu_assign_project" style="font-weight:bolder" style="margin-top: -30px">Issue Date</label>
				<br>
			{!! Form::date('waktu_assign_project', null,
				['class'=>'form-control', 
					'id' =>'waktu_assign_project', 
					'placeholder' => 'Masukan Tanggal', 
					'style' =>'margin-bottom: 10px'
				])
			!!}
		</div>
	</div>

{!! Form::close() !!}
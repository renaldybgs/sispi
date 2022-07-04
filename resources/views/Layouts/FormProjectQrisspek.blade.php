{!! Form::model($qrisspek, [
	'route' => ['adminqrisspeks.update', $qrisspek->id],
	'method' => 'PUT'
]) !!}

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
			<label for="no_formulir" style="font-weight:bolder" style="margin-top: -30px">No Formulir</label>
				<br>
			{!! Form::text('no_formulir', null,
				['class'=> 'form-control',
					'id' =>'no_formulir',
					'placeholder' => 'Masukan No Formulir',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="no_spek" style="font-weight:bolder" style="margin-top: -30px">No Spesifikasi</label>
				<br>
			{!! Form::text('no_spek', null,
				['class'=> 'form-control',
					'id' =>'no_spek',
					'placeholder' => 'Masukan No Spesifikasi',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

{!! Form::close() !!}
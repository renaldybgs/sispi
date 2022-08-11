{!! Form::model($qrisspek, [
	'route' => ['progressqrisspek.update', $qrisspek->id],
	'method' => 'PUT'
]) !!}

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
			<label for="spek_qris" style="font-weight:bolder" style="margin-top: -30px">Tanggal Spek</label>
				<br>
			{!! Form::date('spek_qris', null,
				['class'=> 'form-control',
					'id' =>'spek_qris',
					'placeholder' => 'Masukan Tanggal Spek Qris',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>
	

{!! Form::close() !!}
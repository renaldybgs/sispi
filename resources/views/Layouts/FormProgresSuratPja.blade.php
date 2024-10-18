{!! Form::model($surat, [
	'route' => ['progresssuratpja.update', $surat->id],
	'method' => 'PUT'
]) !!}

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="perihal" style="font-weight:bolder" style="margin-top: -30px">Perihal</label>
				<br>
			{!! Form::text('perihal', null,
				['class'=> 'form-control',
					'id' =>'perihal',
					'placeholder' => 'Masukan Perihal',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	
	<div class="form-group">
		<div class ="input-group-addon">
			<label for="notes_surat" style="font-weight:bolder" style="margin-top: -30px">Notes</label>
				<br>
			{!! Form::textarea('notes_surat', null,
				['class'=> 'form-control',
					'rows' => '2',
					'id' =>'notes_surat',
					'placeholder' => 'Masukan Notes',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="no_unik" style="font-weight:bolder" style="margin-top: -30px">No Unik</label>
				<br>
			{!! Form::textarea('no_unik', null,
				['class'=> 'form-control',
					'rows' => '1',
					'id' =>'no_unik',
					'placeholder' => 'Masukan No Unik',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class="custom-file">
			<input type="file" class="custom-file-input" id="file_surat">
			<label class="custom-file-label" for="file_surat">Choose file</label>
			<br>
			{!! Form::file('file_surat', null,
				['class'=> 'form-control',
					'id' =>'file_surat',
					'placeholder' => 'Masukan Surat Rekomendasi',
					'style' =>'margin-bottom: 10px'
				])
			!!}	
		</div>
	</div>


{!! Form::close() !!}
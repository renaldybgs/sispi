{!! Form::model($surat, [
	'route' => ['progresssurat.update', $surat->id],
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


{!! Form::close() !!}
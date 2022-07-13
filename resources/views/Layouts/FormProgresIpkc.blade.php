{!! Form::model($ipkc, [
	'route' => ['progressipkc.update', $ipkc->id],
	'method' => 'PUT'
]) !!}

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="no_ipkc" style="font-weight:bolder" style="margin-top: -30px">No IPKC</label>
				<br>
			{!! Form::text('no_ipkc', null,
				['class'=> 'form-control',
					'id' =>'no_ipkc',
					'placeholder' => 'Masukan No IPKC',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="bin" style="font-weight:bolder" style="margin-top: -30px">BIN</label>
				<br>
			{!! Form::text('bin', null,
				['class'=> 'form-control',
					'id' =>'bin',
					'placeholder' => 'Masukan BIN',
					'style' =>'margin-bottom: 10px'
				])
			!!}		
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="jenis_ipkc" style="font-weight:bolder" style="margin-top: -30px">Jenis IPKC</label>
				<br>
				{!! Form::select('jenis_ipkc', [' '=> 'Pilih', 'IPKC Test' => 'IPKC Test', 'IPKC Live' => 'IPKC Live'], null,
					['class'=> 'form-control',
						'id' =>'jenis_ipkc', 
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
	

{!! Form::close() !!}
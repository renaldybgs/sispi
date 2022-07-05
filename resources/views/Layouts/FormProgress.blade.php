{!! Form::model($project, [
	'route' => ['progress.update', $project->id],
	'method' => 'PUT'
]) !!}

	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<div class ="input-group-addon">
					<label for="lab" style="font-weight:bolder" style="margin-top: -30px">Functional Lab</label>
						<br>
						{!! Form::select('lab', [' '=> 'Pilih Lab', 'Artajasa' => 'Artajasa', 'Rintis' => 'Rintis', 'Alto' => 'Alto', 'UL' => 'UL'], null,
							['class'=> 'form-control',
								'id' =>'lab', 
								'style' =>'margin-bottom: 10px'
							]);
						!!}		
				</div>
			</div>
		</div>

		<div class="col-sm-6">
			<div class="form-group">
				<div class ="input-group-addon">
					<label for="security_lab" style="font-weight:bolder" style="margin-top: -30px">Security Lab</label>
						<br>
					{!! Form::text('security_lab', null,
						['class'=> 'form-control',
							'id' =>'security_lab',
							'placeholder' => 'Masukan Security Lab',
							'style' =>'margin-bottom: 10px'
						])
					!!}		
				</div>
			</div>
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
					<label for="identification_num" style="font-weight:bolder" style="margin-top: -30px">Identification Number</label>
						<br>
					{!! Form::text('identification_num', null,
						['class'=> 'form-control',
							'rows' => '2',
							'id' =>'identification_num', 
							'placeholder' => 'Masukan Nomor identification number',
							'style' =>'margin-bottom: 10px'
						])
					!!}		
					<!-- {!!$errors->first('nama_product','<div class="invalid-feedback flash">$message</div>')!!} -->
				</div>
			</div>


	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<div class ="input-group-addon">
					<label for="number_special" style="font-weight:bolder" style="margin-top: -30px">Number Special</label>
						<br>
					{!! Form::text('number_special', null,
						['class'=> 'form-control',
							'rows' => '2',
							'id' =>'number_special', 
							'placeholder' => 'Masukan Number Special',
							'style' =>'margin-bottom: 10px'
						])
					!!}		
					<!-- {!!$errors->first('nama_product','<div class="invalid-feedback flash">$message</div>')!!} -->
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
				<div class ="input-group-addon">
					<label for="certification_no" style="font-weight:bolder" style="margin-top: -30px">Certification No</label>
						<br>
					{!! Form::text('certification_no', null,
						['class'=> 'form-control',
							'rows' => '2',
							'id' =>'certification_no',
							'placeholder' => 'Masukan Nomor Certification No',
							'style' =>'margin-bottom: 10px'
						])
					!!}		
					<!-- {!!$errors->first('nama_product','<div class="invalid-feedback flash">$message</div>')!!} -->
				</div>
			</div>
		</div>	
	</div>
	

{!! Form::close() !!}
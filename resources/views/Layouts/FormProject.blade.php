{!! Form::model($project, [
	'route' => ['adminprojects.update', $project->id],
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
			<label for="nama_prod" style="font-weight:bolder" style="margin-top: -30px">Product Name</label>
				<br>
			{!! Form::text('nama_prod', null,
				['class'=> 'form-control',
					'id' =>'nama_prod', 
					'style' =>'margin-bottom: 10px'
				])
			!!}	
		</div>
	</div>

	<div class="form-group">
		<div class ="input-group-addon">
			<label for="typereg_numb" style="font-weight:bolder" style="margin-top: -30px">Product Registration Number</label>
				<br>
			{!! Form::text('typereg_numb', null,
				['class'=> 'form-control',
					'id' =>'typereg_numb', 
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
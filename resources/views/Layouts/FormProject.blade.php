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
{!! Form::close() !!}
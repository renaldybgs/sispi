@extends('Templates.Engineer')
@push('styles')

@section('PageTitle', 'Upload Documents')
@section('content')
<title>
ASPI | NSICCS Upload Documents
</title>

<div class="col-md-12">
	<div id="accordion">
	  <div class="card card-info">
	    <div class="card-header">
	      <h4 class="card-title w-100">
	        <a class="d-block w-100 collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="false">
	        Report LAB NSICCS
	        </a>
	      </h4>
	    </div>
	    	<div id="collapseOne" class="collapse" data-parent="#accordion" style="">
	  		<!-- /.card-header -->
				<div class="card-body">
				  	<form action="/engineer/upload" method="POST" enctype="multipart/form-data">
				    @csrf
				    <div class="card-body">
				      <div class="form-group">
				        <label for="file">File input</label>
				        <div class="input-group">
				          <div class="custom-file">
				            <input type="file" name="uploadedfile" class="custom-file-input" id="uploadedfile">
				            <input type="hidden" name="dtype" value="1">
				            <input type="hidden" name="idproj" value="{{ $id_project }}">
				            <label class="custom-file-label" for="file">Choose file</label>
				          </div>
				          <div class="input-group-append">
				            <button type="submit" class="btn btn-info" id="btn-submit">Submit</button>
				          </div>
				        </div>
				      </div>
				    </div>
				  	</form>
			        <table id="table1" class="table table-bordered table-striped">
			            <thead>
			                <tr>
			                    <th class="text-center">No</th>
			                    <th class="text-center">Nama Document</th>
			                    <th class="text-center">Uploaded By</th>   
			                </tr>
			            </thead>
			        </table>
				</div>
			</div>
		</div>
	</div>
		<!-- Laporan Harian -->
	<div id="accordion">
	  <div class="card card-info">
	    <div class="card-header">
	      <h4 class="card-title w-100">
	        <a class="d-block w-100 collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false">
	        Dokumen LOC
	        </a>
	      </h4>
	    </div>
	    	<div id="collapseTwo" class="collapse" data-parent="#accordion" style="">
	  		<!-- /.card-header -->
				<div class="card-body">
				  	<form action="/engineer/upload" method="POST" enctype="multipart/form-data">
				    @csrf
				    <div class="card-body">
				      <div class="form-group">
				        <label for="file">File input</label>
				        <div class="input-group">
				          <div class="custom-file">
				            <input type="file" name="uploadedfile" class="custom-file-input" id="uploadedfile">
				            <input type="hidden" name="dtype" value="2">
				            <input type="hidden" name="idproj" value="{{ $id_project }}">
				            <label class="custom-file-label" for="file">Choose file</label>
				          </div>
				          <div class="input-group-append">
				            <button type="submit" class="btn btn-info" id="btn-submit">Submit</button>
				          </div>
				        </div>
				      </div>
				    </div>
				  	</form>
			        <table id="table" class="table table-bordered table-striped">
			            <thead>
			                <tr>
			                    <th class="text-center">No</th>
			                    <th class="text-center">Nama Document</th>  
			                </tr>
			            </thead>
			            <tbody>
			            	<tr>
			                	<td class="text-center">1</td>
			                	<td class="text-center">Surat Permohonan.pdf</td>
			                </tr>
			            </tbody>
			        </table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')

@endpush

@extends('Templates.Admin')
@push('styles')
@endpush

@section('PageTitle','List Projects Qris')
@section('content')

@if($userLevel === 4)
<title>
ASPI | Admin List Projects Qris
</title>
@else
<title>
ASPI | Eksekutif List Projects Qris
</title>
@endif

<div class="row mt-2">
  <div class="col-md-12">

  <div id="accordion">
  <div class="card card-info">
    <div class="card-header">
      <h4 class="card-title w-100">
        <a class="d-block w-100 collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="false">
        Filter List Project
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="collapse" data-parent="#accordion" style="">
      <div class="card-body">
        <div class="row">
          <div class="col-md-4 col-sm-6 col-12">
            <div class="form-group">
              <label>Product</label>
                <select class="select2 form-control filter" data-column="2" style="width: 100%;">
                  <option value="">-</option>
                  @foreach($prod as $pr)
                    <option value="{{$pr->nama_product}}">{{$pr->nama_product}}</option>
                  @endforeach
                </select>
            </div>
          </div>

          <div class="col-md-4 col-sm-6 col-12">
            <div class="form-group">
              <label>Status</label>
                <select class="select2 form-control filter" data-column="6" style="width: 100%;">
                  <option value="">-</option>
                  @foreach($pstat as $pst)
                    <option value="{{$pst->nama_pstat}}">{{$pst->nama_pstat}}</option>
                  @endforeach
                </select>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>

    <div class="card card-info card-outline">

        <div class="card-body">
<!--             <a href="/admin/project/export" type="button" class="btn btn-success" style="float:left">
                Excel &nbsp<i class="fas fa-file-download"></i>
            </a> -->
            <table id="table1" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Nama Institusi</th>
                        <th class="text-center">Type Product</th>
                        <th class="text-center">Tanggal Mulai</th>
                        <th class="text-center">No Rekomendasi</th>
                        <th class="text-center">Jenis Ijin BI</th>
                        <th class="text-center">Status</th>
                        @if($userLevel === 4)      
                        <th class="text-center" style="width: 75px">Action</th>
                        @endif                 
                    </tr>
                </thead>
            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->
  </div>
    <!-- /.col -->
</div>
@endsection

@push('scripts')
<script>
  var table = $('#table1').DataTable({ 
    "paging": true,
    "lengthChange": false,
    "searching": true,
    "ordering": true,
    "info": true,
    "autoWidth": false,
    "responsive": true,
    ajax: "{{ route('adminlistqris.table') }}",
    columns: [
      {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
      {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
      {data: 'nama_product', name: 'nama_product', class: 'text-center'},
      {data: 'waktu', name: 'waktu', class: 'text-center'},
      {data: 'no_rekomendasi', name: 'no_rekomendasi', class: 'text-center'},
      {data: 'jenis_qrisbi', name: 'jenis_qrisbi', class: 'text-center'},
      {data: 'id_pstat', name: 'id_pstat', class: 'text-center'},
      @if($userLevel === 4) 
      {data: 'action', name: 'action', class: 'text-center'},
      @endif  
      // {data: 'added_by', name: 'added_by', class: 'text-center'},
      // {data: 'modified_by', name: 'modified_by', class: 'text-center'}
    ]
  });

  $(".filter").change( function(){
    // console.log($(this).val())
    table.column($(this).attr("data-column")).search($(this).val()).draw();
  });

  $(".filter").keyup( function(){
    // console.log($(this).val())
    table.column($(this).attr("data-column")).search($(this).val()).draw();
  });
</script>
@endpush
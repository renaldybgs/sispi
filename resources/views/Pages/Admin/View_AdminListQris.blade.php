@extends('Templates.Admin')
@push('styles')
@endpush

@section('PageTitle','List Projects Qris')
@section('content')


<title>
ASPI | Admin List Projects Qris
</title>

<div class="row mt-2">
  <div class="col-md-12">

<!--   <div class="card card-outline card-primary collapsed-card">
    <div class="card-header">
    <h3 class="card-title">Filter List Project</h3>

    <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse">
        <i class="fas fa-plus"></i>
      </button>
    </div>
    </div>
    
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
              <label>Mitra</label>
                <select class="select2 form-control filter" data-column="4" style="width: 100%;">
                  <option value="">-</option>
                  @foreach($mitra as $mtr)
                    <option value="{{$mtr->nama_mitra}}">{{$mtr->nama_mitra}}</option>
                  @endforeach
                </select>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-md-4 col-sm-6 col-12">
            <label>Project</label>
            <input data-column="5" type="search" class="form-control filter" placeholder aria-controls="table1">
          </div>

          <div class="col-md-4 col-sm-6 col-12">
            <div class="form-group">
              <label>Status</label>
                <select class="select2 form-control filter" data-column="7" style="width: 100%;">
                  <option value="">-</option>
                  @foreach($pstat as $pst)
                    <option value="{{$pst->nama_pstat}}">{{$pst->nama_pstat}}</option>
                  @endforeach
                </select>
            </div>
          </div>
        </div>
      </div>
  </div> -->

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
                        <th class="text-center" style="width: 75px">Action</th>                   
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
      {data: 'action', name: 'action', class: 'text-center'},
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
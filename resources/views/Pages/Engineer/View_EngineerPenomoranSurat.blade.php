@extends('Templates.Engineer')
@push('styles')
@endpush

@section('PageTitle','Daftar Surat Sertifikasi')
@section('content')


<title>
ASPI | Daftar Surat Sertifikasi
</title>

<div class="row mt-2">
  <div class="col-md-12">

  <div id="accordion">
  <div class="card card-info">
    <div class="card-header">
      <h4 class="card-title w-100">
        <a class="d-block w-100 collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="false">
        Filter Surat Sertifikasi
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
            <a href="/engineer/surat" type="button" class="btn btn-success" title="Tambah Surat" id="btn-modal" style="float:left">
                    Tambah Surat &nbsp<i class="fas fa-plus"></i>
            </a>
            <a href="/admin/surat/export" type="button" class="btn btn-info" style="float:left">
                Excel &nbsp<i class="fas fa-file-download"></i>
            </a>
            <table id="table1" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Nama Institusi</th>
                        <th class="text-center">No Surat</th>
                        <th class="text-center">No Unik</th>
                        <th class="text-center">Perihal</th>
                        <th class="text-center">Tanggal Surat</th>
                        <th class="text-center">Catatan</th>
                        <th class="text-center">Dibuat</th>
                        <th class="text-center">Aksi</th>             
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
    ajax: "{{ route('surats.table') }}",
    columns: [
      {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
      {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
      {data: 'no_surat', name: 'no_surat', class: 'text-center'},
      {data: 'no_unik', name: 'no_unik', class: 'text-center'},
      {data: 'perihal', name: 'perihal', class: 'text-center'},
      {data: 'waktu_assign_surat', name: 'waktu_assign_surat', class: 'text-center'},
      {data: 'notes_surat', name: 'notes_surat', class: 'text-center'},
      {data: 'inisial_user', name: 'inisial_user', class: 'text-center'},
      {data: 'action', name: 'action', class: 'text-center'},
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
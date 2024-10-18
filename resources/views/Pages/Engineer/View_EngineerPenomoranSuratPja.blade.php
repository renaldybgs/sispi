@extends('Templates.Engineer')
@push('styles')
@endpush

@section('PageTitle','Daftar Surat PJA')
@section('content')


<title>
ASPI | Daftar Surat PJA
</title>

<div class="row mt-2">
  <div class="col-md-12">

    <div class="card card-info card-outline">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-4 col-md-2">
                    <a href="/engineer/assignsuratpja" type="button" class="btn btn-success" title="Tambah Surat" id="btn-modal" style="float:left">
                            Tambah Surat &nbsp<i class="fas fa-plus"></i>
                    </a>
                </div>
                <div class="col-sm-4 col-md-2">
                    <a href="/admin/suratpja/export" type="button" class="btn btn-info" style="float:left">
                        Excel &nbsp<i class="fas fa-file-download"></i>
                    </a> 
                </div>
            </div>

            <table id="table1" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Nama Institusi</th>
                        <th class="text-center">No Surat</th>
                        <th class="text-center">No Unik</th>
                        <th class="text-center">Perihal</th>
                        <th class="text-center">Tanggal Surat</th>
                        <th class="text-center" style="width: 175px">Status</th>
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
    ajax: "{{ route('suratpja.table') }}",
    columns: [
      {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
      {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
      {data: 'no_surat', name: 'no_surat', class: 'text-center'},
      {data: 'no_unik', name: 'no_unik', class: 'text-center'},
      {data: 'perihal', name: 'perihal', class: 'text-center'},
      {data: 'tanggal_surat', name: 'tanggal_surat', class: 'text-center'},
      {data: 'status', name: 'status', class: 'text-center'},
      {data: 'added_by', name: 'added_by', class: 'text-center'},
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
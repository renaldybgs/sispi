@extends('Templates.Engineer')
@push('styles')
@endpush

@section('PageTitle','List Sertifikasi IPKC')
@section('content')


<title>
ASPI | Sertifikasi List IPKC
</title>

<div class="row mt-2">
  <div class="col-md-12">
    
    <div class="card card-info card-outline">

        <div class="card-body">
            <a href="/admin/ipkc/export" type="button" class="btn btn-success" style="float:left">
                Excel &nbsp<i class="fas fa-file-download"></i>
            </a>
            <table id="table1" class="table table-bordered table-hover">
                <thead>
                    <tr>
                      <th class="text-center">No</th>
                      <th class="text-center">Issuer</th>
                      <th class="text-center">Tanggal Mulai</th>
                      <th class="text-center">No IPKC</th>
                      <th class="text-center">BIN</th>
                      <th class="text-center">Jenis IPKC</th>
                      <th class="text-center">Notes</th>
                      <th class="text-center">Status</th>                     
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
    ajax: "{{ route('engineerlistipkc.table') }}",
    columns: [
        {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
        {data: 'nama_issuer', name: 'nama_issuer', class: 'text-center'},
        {data: 'waktu', name: 'waktu', class: 'text-center'},
        {data: 'no_ipkc', name: 'no_ipkc', class: 'text-center'},
        {data: 'bin', name: 'bin', class: 'text-center'},
        {data: 'jenis_ipkc', name: 'jenis_ipkc', class: 'text-center'},
        {data: 'notes_project', name: 'notes_project', class: 'text-center'},
        {data: 'id_pstat', name: 'id_pstat', class: 'text-center'},
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
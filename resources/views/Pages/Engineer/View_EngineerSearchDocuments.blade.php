@extends('Templates.Engineer')
@push('styles')
<link href="{{ url('') }}/css/search.css" rel="stylesheet" />
@endpush
<!-- @section('Welcome') 
  <h4 style="float:right; margin-right:5px; margin-top:5px">Welcome, {{ auth()->user()->nama_user }}</h4>
@endsection -->
@section('PageTitle','Search Documents')
@section('content')
  <title>
  | {Engineer} Search Documents
  </title>

  <div class="table-responsive-lg"> 
  <table id="table1" class="table1" style="margin-top: -40px" style="overflow:auto">
    <thead>
    <tr>
      <th>No</th>
      <th>Nama Mitra</th>
      <th>Produk</th>
      <th>Nama Projek</th>
      <th>Action</th>
      <th>PIC</th>
      <th>Tahun</th>
    </tr>
    </thead>
  </table>
  </div>
@endsection

@push('scripts')
<script>
$('#table1').DataTable( { 
    "responsive": true,
    "processing": true,
    "serverSide": true,
    "pageLength": 10, 
    "searching": true,
    "paging": true,
    "info": false,         
    "lengthChange": false,
    ajax: "{{ route('searchdocs.table') }}",
    columns: [
      {data: 'DT_RowIndex', name: 'id_project'},
      {data: 'nama_mitra', name: 'nama_mitra'},
      {data: 'nama_product', name: 'nama_product'},
      {data: 'nama_prod', name: 'nama_prod'},
      {data: 'action', name: 'action'},
      {data: 'inisial_user', name: 'inisial_user'},
      {data: 'tahun', name: 'tahun'}
    ],
    "order": [[ 6, "desc" ]]
});
</script>
@endpush
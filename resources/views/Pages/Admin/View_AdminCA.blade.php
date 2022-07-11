@extends('Templates.Admin')
@section('PageTitle','CA')
@section('content')

@if($userLevel === 4)
<title>
Aspi | Admin CA
</title>
@else
<title>
Aspi | Eksekutif CA
</title>
@endif

<div class="row mt-2">
    <div class="col-md-12">
        <!-- /.card-header -->
        <div class="card card-info card-outline">

            <div class="card-body">
                @if($userLevel === 4)
                <a href="{{ route('ca.create') }}" type="button" class="modal-show add-ca btn btn-success" title="Tambah CA" id="btn-modal" style="float:left">
                    Tambah CA &nbsp<i class="fas fa-plus"></i>
                </a>
                @endif
                <table id="table1" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Nama Issuer</th>
                            <th class="text-center">Issue Date</th>
                            <th class="text-center">BIN</th>
                            <th class="text-center">No Registrasi</th>
                            @if($userLevel === 4)
                            <th class="text-center" style="width: 75px">Action</th>
                            <th class="text-center" style="width: 175px">Status</th>
                            @endif
                            <th class="text-center">Added By</th>
                            <th class="text-center">Modified By</th>                          
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
    $('#table1').DataTable( { 
        "paging": true,
        "lengthChange": false,
        "searching": true,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
        ajax: "{{ route('ca.table') }}",
        columns: [
        	{data: 'DT_RowIndex', name: 'id', class: 'text-center'},
        	// {data: 'ABA', name: 'ABA'},
        	{data: 'nama_issuer', name: 'nama_issuer', class: 'text-center'},
            {data: 'waktu', name: 'waktu', class: 'text-center'},
            {data: 'bin', name: 'bin', class: 'text-center'},
            {data: 'reg_ca', name: 'reg_ca', class: 'text-center'},
            @if($userLevel === 4)
        	{data: 'action', name: 'action', class: 'text-center'},
            {data: 'status', name: 'status', class: 'text-center'},
            @endif  
        	{data: 'added_by', name: 'added_by', class: 'text-center'},
        	{data: 'modified_by', name: 'modified_by', class: 'text-center'}
        ]
    });
</script>
@endpush

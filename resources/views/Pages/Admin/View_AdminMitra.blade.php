@extends('Templates.Admin')
@section('PageTitle','Institusi')
@section('content')
<title>
Aspi | Admin Institusi
</title>

<div class="row mt-2">
    <div class="col-md-12">
        <!-- /.card-header -->
        <div class="card card-info card-outline">

            <div class="card-body">
                <a href="{{ route('mitra.create') }}" type="button" class="modal-show add-mitra btn btn-success" title="Tambah Institusi" id="btn-modal" style="float:left">
                    Tambah Institusi &nbsp<i class="fas fa-plus"></i>
                </a>
                <table id="table1" class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Nama Institusi</th>
                            <th class="text-center">Jenis</th>
                            <th class="text-center">keanggotaan</th>
                            <th class="text-center">Alamat</th>
                            <th class="text-center">Nama Pic</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Data Agreement</th>
                            <th class="text-center">Registration Number</th>
                            <th class="text-center" style="width: 75px">Action</th>
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
        ajax: "{{ route('mitra.table') }}",
        columns: [
        	{data: 'DT_RowIndex', name: 'id', class: 'text-center'},
        	// {data: 'ABA', name: 'ABA'},
        	{data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
            {data: 'jenis', name: 'jenis', class: 'text-center'},
            {data: 'keanggotaan', name: 'keanggotaan', class: 'text-center'},
            {data: 'alamat', name: 'alamat', class: 'text-center'},
            {data: 'nama_pic', name: 'nama_pic', class: 'text-center'},
            {data: 'email', name: 'email', class: 'text-center'},
            {data: 'data_agreement', name: 'data_agreement', class: 'text-center'},
            {data: 'reg_numb', name: 'req_numb', class: 'text-center'},
        	{data: 'action', name: 'action', class: 'text-center'},
        	{data: 'added_by', name: 'added_by', class: 'text-center'},
        	{data: 'modified_by', name: 'modified_by', class: 'text-center'}
        ]
    });
</script>
@endpush

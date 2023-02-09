@extends('Templates.Engineer')
@push('styles')
@section('PageTitle', 'Sertifikasi NSICCS')
@section('content')
<title>
ASPI | Sertifikasi NSICCS
</title>

    <div class="row mt-2">
        <div class="col-md-12">
            <!-- /.card-header -->
            <div class="card card-info card-outline">
                <div class="card-body">
                    <a href="/engineer/assign" type="button" class="btn btn-success" title="Tambah NSICCS" id="btn-modal" style="float:left">
                    Tambah NSICCS &nbsp<i class="fas fa-plus"></i>
                    </a>
                    <table id="table1" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">Institusi</th>
                                <th class="text-center">Type Produk</th>
                                <th class="text-center">Issued Date</th>
                                <th class="text-center">Product Name</th>
                                <th class="text-center">Product Registration Number</th>
                                <th class="text-center" style="width: 175px">Status</th>
                                <th class="text-center">Identification Number</th>
                                <th class="text-center" style="width: 125px">Certification Number</th>
                                <th class="text-center">Action</th>
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
        $(document).ready(function() {
            $('#table1').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
                ajax: "{{ route('projects.table') }}",
                columns: [
                {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
                {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
                {data: 'nama_product', name: 'nama_product', class: 'text-center'},
                {data: 'tanggal_assign', name: 'tanggal_assign', class: 'text-center'},
                {data: 'nama_prod', name: 'nama_prod', class: 'text-center'},
                {data: 'typereg_numb', name: 'typereg_numb', class: 'text-center'},
                {data: 'status', name: 'status', class: 'text-center'},
                {data: 'identification_num', name: 'identification_num', class: 'text-center'},
                {data: 'certification_no', name: 'certification_no', class: 'text-center'},
                {data: 'action', name: 'action', class: 'text-center'}
                ],
            });
        });

    </script>

@endpush

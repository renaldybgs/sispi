@extends('Templates.Engineer')
@push('styles')
@section('PageTitle', 'Sertifikasi Projects QRIS Spek')
@section('content')
<title>
ASPI | Sertifikasi Projects QRIS
</title>

    <div class="row mt-2">
        <div class="col-md-12">
            <!-- /.card-header -->
            <div class="card card-info card-outline">
                <div class="card-body">
                    <a href="/engineer/assignqrisspek" type="button" class="btn btn-success" title="Tambah Projects" id="btn-modal" style="float:left">
                    Tambah Projects &nbsp<i class="fas fa-plus"></i>
                    </a>
                    <table id="table1" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">Institusi</th>
                                <th class="text-center">Type Produk</th>
                                <th class="text-center">Tanggal Mulai</th>
                                <th class="text-center">No Formulir</th>
                                <th class="text-center">No Spesifikasi</th>
                                <th class="text-center">Tanggal Spesifikasi</th>
                                <th class="text-center" style="width: 175px">Status</th>
                                <th class="text-center">Action</th>
                                <th class="text-center">Last Updated</th>

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
                ajax: "{{ route('qrisspek.table') }}",
                columns: [
                {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
                {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
                {data: 'nama_product', name: 'nama_product', class: 'text-center'},
                {data: 'tanggal_assign', name: 'tanggal_assign', class: 'text-center'},
                {data: 'no_formulir', name: 'no_formulir', class: 'text-center'},
                {data: 'no_spek', name: 'no_spek', class: 'text-center'},
                {data: 'spek_qris', name: 'spek_qris', class: 'text-center'},
                {data: 'status', name: 'status', class: 'text-center'},
                {data: 'action', name: 'action', class: 'text-center'},
                {data: 'last_updated', name: 'last_updated', class: 'text-center'},
                ],
            });
        });

    </script>

@endpush

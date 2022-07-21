@extends('Templates.Engineer')
@push('styles')
@section('PageTitle', 'Sertifikasi Projects QRIS')
@section('content')
<title>
ASPI | Sertifikasi Projects QRIS
</title>

    <div class="row mt-2">
        <div class="col-md-12">
            <!-- /.card-header -->
            <div class="card card-info card-outline">
                <div class="card-body">
                    <a href="/engineer/assignqris" type="button" class="btn btn-success" title="Tambah Projects" id="btn-modal" style="float:left">
                    Tambah Projects &nbsp<i class="fas fa-plus"></i>
                    </a>
                    <table id="table1" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">Institusi</th>
                                <th class="text-center">Type Produk</th>
                                <th class="text-center">Tanggal Mulai</th>
                                <th class="text-center">No Rekomendasi</th>
                                <th class="text-center">Jenis QRIS BI</th>
                                <th class="text-center">Ijin QRIS BI</th>
                                <th class="text-center" style="width: 175px">Status</th>
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
                ajax: "{{ route('qris.table') }}",
                columns: [
                {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
                {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
                {data: 'nama_product', name: 'nama_product', class: 'text-center'},
                {data: 'tanggal_assign', name: 'tanggal_assign', class: 'text-center'},
                {data: 'no_rekomendasi', name: 'no_rekomendasi', class: 'text-center'},
                {data: 'jenis_qrisbi', name: 'jenis_qrisbi', class: 'text-center'},
                {data: 'ijin_qrisbi', name: 'ijin_qrisbi', class: 'text-center'},
                {data: 'status', name: 'status', class: 'text-center'},
                {data: 'action', name: 'action', class: 'text-center'}
                ],
            });
        });

    </script>

@endpush

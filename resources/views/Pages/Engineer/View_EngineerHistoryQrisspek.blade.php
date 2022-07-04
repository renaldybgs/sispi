@extends('Templates.Engineer')
@push('styles')
@section('PageTitle', 'Project Done Qrisspek')
@section('content')
    <title>
ASPI | Sertifikasi Projects Done 
    </title>
    <div class="row mt-2">
        <div class="col-md-12">
            <!-- /.card-header -->
            <div class="card card-info card-outline">
                <div class="card-body">
                    <table id="table1" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-center">No</th>
                                <th class="text-center">Institusi</th>
                                <th class="text-center">Type Produk</th>
                                <th class="text-center">Tanggal Mulai</th>
                                <th class="text-center">No Formulir</th>
                                <th class="text-center">No Spesfikasi</th>
                                <th class="text-center">Tanggal Spesifikasi</th>
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
        $(document).ready(function() {
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });

    </script>

    <script>
        $('#table1').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
            ajax: "{{ route('historyqrisspek.table') }}",
            columns: [               
                {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
                {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
                {data: 'nama_product', name: 'nama_product', class: 'text-center'},
                {data: 'tanggal_assign', name: 'tanggal_assign', class: 'text-center'},
                {data: 'no_formulir', name: 'no_formulir', class: 'text-center'},
                {data: 'no_spek', name: 'no_spek', class: 'text-center'},
                {data: 'spek_qris', name: 'spek_qris', class: 'text-center'},
                {data: 'id_pstat', name: 'id_pstat', class: 'text-center'},
            ],
            "order": [
                [5, "desc"]
            ]
        });

    </script>
@endpush

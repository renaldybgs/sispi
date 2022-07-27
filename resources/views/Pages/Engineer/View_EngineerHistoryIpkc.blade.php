@extends('Templates.Engineer')
@push('styles')
@section('PageTitle', 'Project Done IPKC')
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
                                <th class="text-center">Issuer</th>
                                <th class="text-center">Tanggal Mulai</th>
                                <th class="text-center">No IPKC</th>
                                <th class="text-center">BIN</th>
                                <th class="text-center">Jenis Ipkc</th>
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
            ajax: "{{ route('historyipkc.table') }}",
            columns: [               
                {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
                {data: 'nama_issuer', name: 'nama_issuer', class: 'text-center'},
                {data: 'tanggal_assign', name: 'tanggal_assign', class: 'text-center'},
                {data: 'no_ipkc', name: 'no_ipkc', class: 'text-center'},
                {data: 'bin', name: 'bin', class: 'text-center'},
                {data: 'jenis_ipkc', name: 'jenis_ipkc', class: 'text-center'},
                {data: 'notes_project', name: 'notes_project', class: 'text-center'},
                {data: 'id_pstat', name: 'id_pstat', class: 'text-center'},
            ],
            "order": [
                [5, "desc"]
            ]
        });

    </script>
@endpush

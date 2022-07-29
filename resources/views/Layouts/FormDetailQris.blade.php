{!! Form::model($qris, [
    'route' => ['adminlistqris.detail', $qris->id],
    'method' => 'GET'
]) !!}

    <div class="row mt-2">
    <div class="col-md-12">
        <!-- /.card-header -->
        <div class="card card-danger card-outline">

            <div class="card-body">
                <table id="table2" class="table table-bordered table-striped">
                    <thead>
                        <tr class="text-center">
                            <th>Tanggal Surat Rekomendasi</th>
                            <td>{{ $pbn->surat_rekomendasi }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Ijin QRIS BI</th>
                            <td>{{ $pbn->ijin_qrisbi }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Tanggal Ijin BI</th>
                            <td>{{ $pbn->tgl_ijinbi }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Notes Project</th>
                            <td>{{ $pbn->notes_project }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Last Updated</th>
                            <td>{{ $pbn->last_updated }}</td>
                        </tr>

                    </thead>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
    <!-- /.col -->
{!! Form::close() !!}
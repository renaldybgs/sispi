{!! Form::model($project, [
    'route' => ['adminlistprojects.detail', $project->id],
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
                            <th>Number Special</th>
                            <td>{{ $pbn->number_special }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>lab</th>
                            <td>{{ $pbn->lab }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Security Lab</th>
                            <td>{{ $pbn->security_lab }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>PIF</th>
                            <td>{{ $pbn->pif }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>CTF</th>
                            <td>{{ $pbn->ctf }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Report Lab</th>
                            <td>{{ $pbn->report_lab }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Complience Request</th>
                            <td>{{ $pbn->complience_req }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>LOA New</th>
                            <td>{{ $pbn->loa_new }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>LOA Send</th>
                            <td>{{ $pbn->loa_sent }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Identification Number</th>
                            <td>{{ $pbn->identification_num }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Certification Number</th>
                            <td>{{ $pbn->certification_no }}</td>
                        </tr>
                        <tr class="text-center">
                            <th>Notes Project</th>
                            <td>{{ $pbn->notes_project }}</td>
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
@extends('Templates.Engineer')
@push('styles')
@endpush

@section('PageTitle','List Sertifikasi QRIS Spesifikasi')
@section('content')


<title>
ASPI | Sertifikasi List QRIS Spesifikasi
</title>

<div class="row mt-2">
  <div class="col-md-12">

  <div id="accordion">
  <div class="card card-info">
    <div class="card-header">
      <h4 class="card-title w-100">
        <a class="d-block w-100 collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="false">
        Filter List Sertifikasi
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="collapse" data-parent="#accordion" style="">
      <div class="card-body">
        <div class="row">
          <div class="col-md-4 col-sm-6 col-12">
            <div class="form-group">
              <label>Product</label>
                <select class="select2 form-control filter" data-column="2" style="width: 100%;">
                  <option value="">-</option>
                  @foreach($prod as $pr)
                    <option value="{{$pr->nama_product}}">{{$pr->nama_product}}</option>
                  @endforeach
                </select>
            </div>
          </div>

          <div class="col-md-4 col-sm-6 col-12">
            <div class="form-group">
              <label>Status</label>
                <select class="select2 form-control filter" data-column="8" style="width: 100%;">
                  <option value="">-</option>
                  @foreach($pstat as $pst)
                    <option value="{{$pst->nama_pstat}}">{{$pst->nama_pstat}}</option>
                  @endforeach
                </select>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
    <div class="card card-info card-outline">

        <div class="card-body">
            <a href="/admin/qrisspek/export" type="button" class="btn btn-success" style="float:left">
                Excel &nbsp<i class="fas fa-file-download"></i>
            </a>
            <table id="table1" class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Nama Institusi</th>
                        <th class="text-center">Type Product</th>
                        <th class="text-center">Tanggal Mulai</th>
                        <th class="text-center">No Formulir</th>
                        <th class="text-center">No Spesifikasi</th>
                        <th class="text-center">Tanggal Spesifikasi</th>
                        <th class="text-center">Notes</th>
                        <th class="text-center">Status</th>
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
  var table = $('#table1').DataTable({ 
    "paging": true,
    "lengthChange": false,
    "searching": true,
    "ordering": true,
    "info": true,
    "autoWidth": false,
    "responsive": true,
    ajax: "{{ route('engineerlistqrisspek.table') }}",
    columns: [
      {data: 'DT_RowIndex', name: 'id', class: 'text-center'},
      {data: 'nama_mitra', name: 'nama_mitra', class: 'text-center'},
      {data: 'nama_product', name: 'nama_product', class: 'text-center'},
      {data: 'waktu', name: 'waktu', class: 'text-center'},
      {data: 'no_formulir', name: 'no_formulir', class: 'text-center'},
      {data: 'no_spek', name: 'no_spek', class: 'text-center'},
      {data: 'spek_qris', name: 'spek_qris', class: 'text-center'},
      {data: 'notes_project', name: 'notes_project', class: 'text-center'},
      {data: 'id_pstat', name: 'id_pstat', class: 'text-center'},
      {data: 'last_updated', name: 'last_updated', class: 'text-center'},
      // {data: 'modified_by', name: 'modified_by', class: 'text-center'}
    ]
  });

  $(".filter").change( function(){
    // console.log($(this).val())
    table.column($(this).attr("data-column")).search($(this).val()).draw();
  });

  $(".filter").keyup( function(){
    // console.log($(this).val())
    table.column($(this).attr("data-column")).search($(this).val()).draw();
  });
</script>
@endpush
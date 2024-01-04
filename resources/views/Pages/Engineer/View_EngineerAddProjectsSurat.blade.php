@extends('Templates.Engineer')
@push('styles')
@endpush
@section('PageTitle','Tambah Penomoran Surat')
@section('content')
<title>
 ASPI | Penomoran Surat
</title>
<div class="card card-info card-tabs">
  <div class="card-header p-0 pt-1 border-bottom-0">
    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill" href="#surat" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">New Surat</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <div class="tab-content" id="custom-tabs-three-tabContent">
      <!-- SURAT -->
      <div id="surat" class="tab-pane fade active show" id="surat" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
        <form method="post" action="/engineer/newprojectsurat" id="my-surat">
        @csrf
        <div id="mitra" class="form-group">
            <label for="id_mitra">Institusi</label>
            <div class="@error('id_mitra') is-invalid @enderror">
              <select class="select2 form-control-border border-width-2 form-control @error ('id_mitra') is-invalid @enderror" id="id_mitra" name="id_mitra" style="width: 100%;">
                <option value="">Pilih Institusi</option>
                @foreach($mitras as $mtr)
                @if (old('id_mitra') == $mtr->id)
                  <option value="{{ $mtr->id }}" selected>{{ $mtr->nama_mitra }}</option>
                @else 
                  <option value="{{ $mtr->id }}">{{ $mtr->nama_mitra }}</option>
                @endif
                @endforeach
                </select>
                @error('id_mitra')
                <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}
                </div>
                @enderror 
            </div>
          </div>

          <div id="perihal" class="form-group">
            <label for="perihal">Perihal</label>
            <input type="text" class="form-control  @error('perihal') is-invalid @enderror" id="perihal" placeholder="perihal" name="perihal" autocomplete="off" value="{{ old('perihal') }}" style="width: 100%;">
            @error('perihal')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="waktu_assign_surat" class="form-group">
            <label for="waktu_assign_surat">Issued Date</label>
            <input type="date" class="form-control  @error('waktu_assign_surat') is-invalid @enderror" id="waktu_assign_surat" placeholder="Masukan Issued Date" name="waktu_assign_surat" autocomplete="off" value="{{ old('waktu_assign_surat') }}" style="width: 100%;">
            @error('waktu_assign_surat')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>
            <button type="submit" class="btn btn-outline-primary float-right" id="btn-submitsurat">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

@endsection
@push('scripts')

<script type="text/javascript">
   
    $(document).ready(function () {
    
        $("#my-surat").submit(function (e) {
   
            $("#btn-submitsurat").attr("disabled", true);
   
            return true;
    
        });
    });
</script>
@endpush
@extends('Templates.Engineer')
@push('styles')
@endpush
@section('PageTitle','Tambah Sertifikasi QRIS')
@section('content')
<title>
 ASPI | Sertifikasi QRIS
</title>
<div class="card card-info card-tabs">
  <div class="card-header p-0 pt-1 border-bottom-0">
    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill" href="#qris" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">New Sertifikasi QRIS Rekomendasi</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <div class="tab-content" id="custom-tabs-three-tabContent">
      <!-- QRIS -->
      <div id="qris" class="tab-pane fade active show" id="qris" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
        <form method="post" action="/engineer/newprojectqris" id="my-qris">
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

          <div id="produk" class="form-group">
            <label for="id_product">Produk</label>
            <div class="@error('id_product') is-invalid @enderror">
              <select class="select2 form-control-border border-width-2 form-control @error ('id_product') is-invalid @enderror" id="id_product" name="id_product" style="width: 100%;">
                <option value="" >Pilih Produk</option>
                @foreach($products as $prod)
                @if (old('id_product') == $prod->id)
                  <option value="{{ $prod->id }}" selected>{{ $prod->nama_product }}</option>
                @else 
                  <option value="{{ $prod->id }}">{{ $prod->nama_product }}</option>
                @endif
                @endforeach
                </select>
                @error('id_product')
                <div class="invalid-feedback flash" style="margin-top: 2px">
                  {{ $message }}</div>
                @enderror
            </div>
          </div>

          <div id="waktu_assign_project" class="form-group">
            <label for="waktu_assign_project">Issued Date</label>
            <input type="date" class="form-control  @error('waktu_assign_project') is-invalid @enderror" id="waktu_assign_project" placeholder="Masukan Issued Date" name="waktu_assign_project" autocomplete="off" value="{{ old('waktu_assign_project') }}" style="width: 100%;">
            @error('waktu_assign_project')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>
            <button type="submit" class="btn btn-outline-primary float-right" id="btn-submitqris">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

@endsection
@push('scripts')

<script type="text/javascript">
   
    $(document).ready(function () {
    
        $("#my-qris").submit(function (e) {
   
            $("#btn-submitqris").attr("disabled", true);
   
            return true;
    
        });
    });
</script>
@endpush
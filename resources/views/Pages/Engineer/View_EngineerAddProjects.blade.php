@extends('Templates.Engineer')
@push('styles')
@endpush
@section('PageTitle','Tambah Sertifikasi')
@section('content')
<title>
 ASPI | Sertifikasi
</title>
<div class="card card-info card-tabs">
  <div class="card-header p-0 pt-1 border-bottom-0">
    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill" href="#nsiccs" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">New Sertifikasi NSICCS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill" href="#ipkc" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="true">New Sertifikasi IPKC</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <div class="tab-content" id="custom-tabs-three-tabContent">
      
      <div class="tab-pane fade active show" id="nsiccs" role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
        <form method="post" action="/engineer/newproject" id="my-form">
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

          <div id="typereqnumb" class="form-group">
            <label for="nama_prod">Product Name</label>
            <input type="text" class="form-control  @error('nama_prod') is-invalid @enderror" id="nama_prod" placeholder="Product Name" name="nama_prod" autocomplete="off" value="{{ old('nama_prod') }}" style="width: 100%;">
            @error('nama_prod')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="typereqnumb" class="form-group">
            <label for="typereg_numb">Product Registration Number</label>
            <input type="text" class="form-control  @error('typereg_numb') is-invalid @enderror" id="typereg_numb" placeholder="Product Registration Number" name="typereg_numb" autocomplete="off" value="{{ old('typereg_numb') }}" style="width: 100%;">
            @error('typereg_numb')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="waktu_assign_project" class="form-group">
            <label for="waktu_assign_project">Issued Date</label>
            <input type="date" class="form-control  @error('waktu_assign_project') is-invalid @enderror" id="waktu_assign_project" placeholder="Masukan Issued Date" name="waktu_assign_project" autocomplete="off" value="{{ old('waktu_assign_project') }}" style="width: 100%;">
            @error('waktu_assign_project')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="identification_num" class="form-group">
            <label for="identification_num">identification_num</label>
            <input type="text" class="form-control  @error('identification_num') is-invalid @enderror" id="identification_num" placeholder="identification_num" name="identification_num" autocomplete="off" value="{{ old('identification_num') }}" style="width: 100%;">
            @error('identification_num')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="certification_no" class="form-group">
            <label for="certification_no">certification_no</label>
            <input type="text" class="form-control  @error('certification_no') is-invalid @enderror" id="certification_no" placeholder="certification_no" name="certification_no" autocomplete="off" value="{{ old('certification_no') }}" style="width: 100%;">
            @error('certification_no')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="number_special" class="form-group">
            <label for="certification_no">number_special</label>
            <input type="text" class="form-control  @error('number_special') is-invalid @enderror" id="number_special" placeholder="number_special" name="number_special" autocomplete="off" value="{{ old('number_special') }}" style="width: 100%;">
            @error('number_special')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="loa_new" class="form-group">
            <label for="loa_new">Issued Date</label>
            <input type="date" class="form-control  @error('loa_new') is-invalid @enderror" id="loa_new" placeholder="Masukan Issued Date" name="loa_new" autocomplete="off" value="{{ old('loa_new') }}" style="width: 100%;">
            @error('loa_new')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <button type="submit" class="btn btn-outline-primary float-right" id="btn-submit">Submit</button>
        </form> 
      </div>

      <!-- IPKC -->
      <div id="ipkc" class="tab-pane fade" id="ipkc" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
        <form method="post" action="/engineer/newprojectipkc" id="my-ipkc">
        @csrf
        <div id="ca" class="form-group">
            <label for="id_ca">Nama Issuer</label>
            <div class="@error('id_ca') is-invalid @enderror">
              <select class="select2 form-control-border border-width-2 form-control @error ('id_ca') is-invalid @enderror" id="id_ca" name="id_ca" style="width: 100%;">
                <option value="">Pilih Issuer</option>
                @foreach($cas as $cas)
                @if (old('id_ca') == $cas->id)
                  <option value="{{ $cas->id }}" selected>{{ $cas->nama_issuer }}</option>
                @else 
                  <option value="{{ $cas->id }}">{{ $cas->nama_issuer }}</option>
                @endif
                @endforeach
                </select>
                @error('id_ca')
                <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}
                </div>
                @enderror 
            </div>
          </div>

          <div id="no_ipkc" class="form-group">
            <label for="no_ipkc">No IPKC</label>
            <input type="text" class="form-control  @error('no_ipkc') is-invalid @enderror" id="no_ipkc" placeholder="No IPKC" name="no_ipkc" autocomplete="off" value="{{ old('no_ipkc') }}" style="width: 100%;">
            @error('no_ipkc')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="jenis_ipkc" class="form-group">
            <label for="jenis_ipkc">Jenis IPKC</label>
            <div class="@error('jenis_ipkc') is-invalid @enderror">
              <select class="select2 form-control-border border-width-2 form-control @error ('jenis_ipkc') is-invalid @enderror" id="jenis_ipkc" name="jenis_ipkc" style="width: 100%;">
                <option selected="selected">Pilih IPKC</option>
                <option >IPKC Test</option>
                <option>IPKC Live</option>
                </select>
                @error('jenis_ipkc')
                <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}
                </div>
                @enderror 
            </div>
          </div>

          <div id="bin" class="form-group">
            <label for="bin">BIN</label>
            <input type="text" class="form-control  @error('bin') is-invalid @enderror" id="bin" placeholder="BIN" name="bin" autocomplete="off" value="{{ old('bin') }}" style="width: 100%;">
            @error('bin')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>

          <div id="waktu_assign_project" class="form-group">
            <label for="waktu_assign_project">Issued Date</label>
            <input type="date" class="form-control  @error('waktu_assign_project') is-invalid @enderror" id="waktu_assign_project" placeholder="Masukan Issued Date" name="waktu_assign_project" autocomplete="off" value="{{ old('waktu_assign_project') }}" style="width: 100%;">
            @error('waktu_assign_project')
              <div class="invalid-feedback flash" style="margin-top: 2px">
                {{ $message }}</div>
            @enderror
          </div>
            <button type="submit" class="btn btn-outline-primary float-right" id="btn-submitipkc">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>

@endsection
@push('scripts')
<script type="text/javascript">
   
    $(document).ready(function () {
    
        $("#my-form").submit(function (e) {
   
            $("#btn-submit").attr("disabled", true);
   
            return true;
    
        });
    });
</script>

<script type="text/javascript">
   
    $(document).ready(function () {
    
        $("#my-qris").submit(function (e) {
   
            $("#btn-submitqris").attr("disabled", true);
   
            return true;
    
        });
    });
</script>

<script type="text/javascript">
   
    $(document).ready(function () {
    
        $("#my-qrisspek").submit(function (e) {
   
            $("#btn-submitqrisspek").attr("disabled", true);
   
            return true;
    
        });
    });
</script>

<script type="text/javascript">
   
    $(document).ready(function () {
    
        $("#my-ipkc").submit(function (e) {
   
            $("#btn-submitipkc").attr("disabled", true);
   
            return true;
    
        });
    });
</script>
@endpush
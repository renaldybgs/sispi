@extends('Templates.Engineer')
@push('styles')
@endpush
@section('PageTitle','Tambah Projects')
@section('content')
<title>
 ASPI | Sertifikasi Add Projects
</title>
<div class="card card-info card-tabs">
  <div class="card-header p-0 pt-1 border-bottom-0">
    <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" id="custom-tabs-three-home-tab" data-toggle="pill" href="#nsiccs" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">New Projects NSICCS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill" href="#qris" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="true">New Projects QRIS Rekomendasi</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill" href="#qrisspek" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="true">New Projects QRIS Spek</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="custom-tabs-three-profile-tab" data-toggle="pill" href="#ipkc" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="true">New Projects IPKC</a>
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
          <button type="submit" class="btn btn-outline-primary float-right" id="btn-submit">Submit</button>
        </form> 
      </div>

      <!-- QRIS -->
      <div id="qris" class="tab-pane fade" id="qris" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
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

            <!-- QRIS Spek-->
      <div id="qrisspek" class="tab-pane fade" id="qrisspek" role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
        <form method="post" action="/engineer/newprojectqrisspek" id="my-qrisspek">
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

          <div id="no_formulir" class="form-group">
            <label for="no_formulir">No Formulir</label>
            <input type="text" class="form-control  @error('no_formulir') is-invalid @enderror" id="no_formulir" placeholder="No Formulir" name="no_formulir" autocomplete="off" value="{{ old('no_formulir') }}" style="width: 100%;">
            @error('no_formulir')
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
            <button type="submit" class="btn btn-outline-primary float-right" id="btn-submitqrisspek">Submit</button>
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
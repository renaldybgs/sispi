<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/png" href="{{ url('assets/img/aspilogo1.jpeg') }}">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
ASPI | Choose Role
  </title>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ url('assets/plugins/fontawesome-free/css/all.min.css') }}">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{ url('assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ url('assets/dist/css/adminlte.min.css') }}">
  <link href="{{ url('assets/bootstrap.min.css') }}" rel="stylesheet" />
  <link href="{{ url('assets/paper-dashboard.css?v=2.0.0') }}" rel="stylesheet" >
  <link href="{{ url('assets/Login.css') }}" rel="stylesheet" >

  <style>
    body {
      background-image: url('{{ url('assets/img/vectorjan.jpg') }}');
      background-size: 100% 100%;}
  </style>
</head>

<div class="col-sm-12">
  <img class="img-fluid" src="{{ url('assets/img/aspi-logo.png') }}" alt="Photo" align="right">
</div>

<div class="col-sm-12">
<div class="row role-panel">

<!-- < Role Engineer -- -->
<div class="role">
  <h3 class="title" style="color: white;">Sertifikasi</h3>
  <div class="chooserole">
    <a href="/engineer/projects">
      <div class="content-overlay"></div>
      <img class="content-image" src="{{ url('assets/img/file.svg') }}">
      <div class="content-details fadeIn-top">
        <h3>Login as <strong>Sertifikasi</strong></h3>
        <i class="fas fa-sign-in-alt fa-2x" style="color: white"></i>
      </div>
    </a>
  </div>
</div>

<!-- < Role Admin -- -->
<div class="role">
  <h3 class="title" style="color: white;">Admin</h3>
  <div class="chooserole">
    <a href="/admin/home">
      <div class="content-overlay"></div>
      <img class="content-image" src="{{ url('assets/img/email.svg') }}">
      <div class="content-details fadeIn-top">
        <h3>Login as <strong>Admin</strong></h3>
        <i class="fas fa-sign-in-alt fa-2x" style="color: white"></i>
      </div>
    </a>
  </div>
</div>

</div>
</div>

<!-- Javascript -->

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/png" href="{{ url('assets/img/aspi-logo.png') }}">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    | Login
  </title>
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ url('assets/plugins/fontawesome-free/css/all.min.css') }}">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{ url('assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ url('assets/dist/css/adminlte.min.css') }}">

  <!--     Fonts and icons     -->
<!--   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://fonts.google.com/css?family=Balsamiq+Sans" rel="stylesheet" type="text/css"/>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet"/> -->
  <!-- CSS Files -->
  <link href="{{ url('assets/bootstrap.min.css') }}" rel="stylesheet" />
  <link href="{{ url('assets/paper-dashboard.css?v=2.0.0') }}" rel="stylesheet" >
  <link href="{{ url('assets/Login.css') }}" rel="stylesheet" >

  <style>
    body {
      background-image: url('{{ url('assets/img/aspiback.jpeg') }}');
      background-size: 100% 100%;}
  </style>
</head>

<!-- @if (count($errors) > 0)
  <div class="alert alertlogin">
    <p>Username atau Password yang Anda Masukan Salah</p>
    {{$errors}}
    <ul>
        @foreach ($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </ul>
  </div>
   
@endif -->
<!-- <div class="col-sm-6">
  <img class="img-fluid" src="assets/img/aspi-logo.png" alt="Photo">
</div> -->

<!-- Dialog Login-->
<div class="box">
    <!-- Error Message On Login Failure -->
    @if (count($errors) > 0)
      @foreach( $errors->all() as $message )
        <div class="alertlogin">
          {{$message}}
        </div>
      @endforeach
    @endif
    
  <h3>Login</h3>

  <!-- <form role="form-auth-small" method="POST" action="/login/auth"> -->
  <form method="POST" action="/login/auth">
    @csrf
      <div class="group">     
        <input id="email" class="inputMaterial" type="email" name="email" value="{{ old('inisial_user') }}" required>
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>
          <span class="icon fas fa-user fa-lg" style="position: absolute; color:#A7DCF0; margin-left: -25px"></span>Username
        </label>
      </div>
      <div class="group">      
        <input id="password" class="inputMaterial" type="password" name="password"required>
        <span class="highlight"></span>
        <span class="bar"></span>
        <label>
          <span class="fas fa-unlock-alt fa-lg" style="position: absolute; color:#A7DCF0; margin-left: -25px"></span>Password
        </label>
      </div>
    <button class="btn-login" data-hover="GO!" type="submit" name="login"><div>Ready to Work?</div></button>
  </form>
<!-- ./box -->
</div>

<!-- Javascript -->
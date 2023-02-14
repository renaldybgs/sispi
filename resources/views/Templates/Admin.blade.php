<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" type="image/png" href="{{ url('assets/img/aspilogo1.jpeg') }}">
    <!-- <title>Engineer | Dashboard</title> -->

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Select2 -->
    <link rel="stylesheet" href="{{ url('assets/plugins/select2/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ url('assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="{{ url('assets/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">
    <link rel="stylesheet" href="{{ url('assets/plugins/sweetalert2/sweetalert2.min.css') }}">
    <!-- Toastr -->
    <link rel="stylesheet" href="{{ url('assets/plugins/toastr/toastr.min.css') }}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ url('assets/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet"
        href="{{ url('assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css') }}">
    <!-- iCheck -->
    <link rel="stylesheet" href="{{ url('assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ url('assets/dist/css/adminlte.min.css') }}">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="{{ url('assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css') }}">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="{{ url('assets/plugins/daterangepicker/daterangepicker.css') }}">
    <!-- summernote -->
    <link rel="stylesheet" href="{{ url('assets/plugins/summernote/summernote-bs4.min.css') }}">
    <!-- DataTables -->
    <link rel="stylesheet" href="{{ url('assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet"
        href="{{ url('assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ url('assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css') }}">


    @stack('styles')
</head>

<body class="hold-transition sidebar-mini sidebar-collapse layout-fixed">
    <div class="wrapper">

        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-blue">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>
            <!-- Right navbar links -->
 
            <ul class="navbar-nav ml-auto">
                <li class="nav-item d-none d-sm-inline-block">
                    <a class="nav-link">Welcome, {{ auth()->user()->nama_user }} &nbsp</a>
                </li>
<!--                 <li class="nav-item">
                    <a class="nav-link" href="/logout" role="button" title="Logout">
                      <i class="fas fa-power-off"></i>
                    </a>
                </li>
                @if ($userLevel === 5)
                <li class="nav-item">
                    <a class="nav-link" href="/login/choose" role="button" title="Switch Role">
                      <i class="fas fa-share"></i>
                    </a>
                </li>
                @endif -->
                <li class="nav-item dropdown">
                    <a class="nav-link" data-toggle="dropdown" href="#">
                      <i class="fas fa-th-large"></i>
                      
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                      <span class="dropdown-item dropdown-header">Silahkan Pilih</span>
                      <div class="dropdown-divider"></div>
                      <a href="/logout" class="dropdown-item">
                        <i class="fas fa-power-off"></i> Logout
                      </a>
                      @if ($userLevel === 4 || $userLevel === 6)
                      <div class="dropdown-divider"></div>
                      <a href="/login/choose" class="dropdown-item">
                        <i class="fas fa-share"></i> Switch Role
                      </a>
                      @endif
                    </div>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-navy elevation-4">
            <!-- Brand Logo -->
            <a href="/admin/home" class="brand-link" style="background: linear-gradient(#096279, #00d4ff)">
                <img src="{{ url('assets/img/aspilogo1.jpeg') }}" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">Sertifikasi ASPI</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar elevation-2" style="background: linear-gradient(#096279, #00d4ff)">

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        @if ($userLevel === 4 || $userLevel === 6)
                        <li id="homepage" class="nav-item">
                            <a href="/admin/home" class="nav-link">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Home
                                    <i class="right fas fa-home-left"></i>
                                </p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="/admin/users" class="nav-link">
                                <i class="nav-icon fas fa-users"></i>
                                <p>
                                    Users
                                    <i class="right fas fa-users-left"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/products" class="nav-link">
                                <i class="nav-icon fas fa-random"></i>
                                <p>
                                    Type Product
                                    <i class="fas fa-random-left right"></i>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/admin/anggota" class="nav-link">
                                <i class="nav-icon fas fa-university"></i>
                                <p>
                                    Keanggotaan
                                    <i class="fas fa-university-left right"></i>
                                </p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-credit-card"></i>
                                <p>
                                    &nbsp CA
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/admin/ca" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Data CA</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/admin/ipkc" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>List Sertifikasi IPKC</p>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    &nbsp List Sertifikasi
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/admin/projects" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>NSICCS</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/admin/qris" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>QRIS Rekomendasi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/admin/qrisspek" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>QRIS Spesifikasi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/admin/perlindungan" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Perlindungan Konsumen</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        @elseif($userLevel === 5)
                        <li class="nav-item">
                            <a href="/eksekutif/home" class="nav-link">
                                <i class="nav-icon fas fa-home"></i>
                                <p>
                                    Home
                                    <i class="right fas fa-home-left"></i>
                                </p>
                            </a>
                        </li> 
                        <li class="nav-item">
                            <a href="/eksekutif/anggota" class="nav-link">
                                <i class="nav-icon fas fa-university"></i>
                                <p>
                                    Keanggotaan
                                    <i class="fas fa-university-left right"></i>
                                </p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-credit-card"></i>
                                <p>
                                    &nbsp CA
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/eksekutif/ca" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Data CA</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/eksekutif/ipkc" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>List Sertifikasi Ipkc</p>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    &nbsp List Sertifikasi
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="/eksekutif/projects" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>NSICCS</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/eksekutif/qris" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>QRIS Rekomendasi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="/eksekutif/qrisspek" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>QRIS Spesifikasi</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>SNAP</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        @endif
<!--                         <li class="nav-item">
                            <a href="/admin/approval" class="nav-link">
                                <i class="nav-icon fas fa-clipboard-check"></i>
                                <p>
                                    
                                    <i class="fas fa-clipboard-check-left right"></i>
                                </p>
                            </a>
                        </li> -->
<!--                         <li class="nav-item">
                            <a href="/admin/export" class="nav-link">
                                <i class="nav-icon fas fa-download"></i>
                                <p>
                                    Database
                                    <i class="fas fa-download-left right"></i>
                                </p>
                            </a>
                        </li> -->
                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">@yield('PageTitle')</h1>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    @yield('content')
                    @include('Layouts.Notif')
                    @include('Layouts.ModalList')
                    @include('Layouts.Modal')
                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        @include('Layouts.Footer')

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="{{ url('assets/plugins/jquery/jquery.min.js') }}"></script>

    <!-- jQuery UI 1.11.4 -->
    <script src="{{ url('assets/plugins/jquery-ui/jquery-ui.min.js') }}"></script>

    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)

    </script>

    <!-- Bootstrap 4 -->
    <script src="{{ url('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>

    <!-- ChartJS -->
    <script src="{{ url('assets/plugins/chart.js/Chart.min.js') }}"></script>

    <!-- jQuery Knob Chart -->
    <script src="{{ url('assets/plugins/jquery-knob/jquery.knob.min.js') }}"></script>

    <!-- daterangepicker -->
    <script src="{{ url('assets/plugins/moment/moment.min.js') }}"></script>
    <script src="{{ url('assets/plugins/daterangepicker/daterangepicker.js') }}"></script>

    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{ url('assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>

    <!-- Summernote -->
    <script src="{{ url('assets/plugins/summernote/summernote-bs4.min.js') }}"></script>

    <!-- overlayScrollbars -->
    <script src="{{ url('assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script>

    <!-- AdminLTE App -->
    <script src="{{ url('assets/dist/js/adminlte.js') }}"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="{{ url('assets/dist/js/demo.js') }}"></script>

    <!-- DataTables  & Plugins -->
    <script src="{{ url('assets/plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-responsive/js/dataTables.responsive.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ url('assets/plugins/jszip/jszip.min.js') }}"></script>
    <script src="{{ url('assets/plugins/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ url('assets/plugins/pdfmake/vfs_fonts.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
    <script src="{{ url('assets/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
    <!-- Script JS -->
    <script src="{{ url('assets/dist/js/script.js') }}"></script>
    <script src="{{ url('assets/plugins/sweetalert2/sweetalert2.min.js') }}"></script>
    <script src="{{ url('assets/plugins/toastr/toastr.min.js') }}"></script>
    <script src="{{ url('assets/dist/js/demo.js') }}"></script>
    <!-- Select2 -->
    <script src="{{ url('assets/plugins/select2/js/select2.full.min.js') }}"></script>

    <script src="{{ url('assets/plugins/bs-custom-file-input/bs-custom-file-input.min.js') }}"></script>

    <script>
    $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Initialize Select2 Elements
    $('.select2bs4').select2({
      theme: 'bootstrap4'
    })
    })
    </script>

    <script>
    $(function () {
      bsCustomFileInput.init();
    });
    </script>

    @stack('scripts')

</body>

</html>


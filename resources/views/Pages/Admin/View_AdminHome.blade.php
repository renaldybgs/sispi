@extends('Templates.Admin')
@push('styles') 
@endpush
@section('PageTitle','Home')
@section('content')
@if($userLevel === 4)
<title>
 ASPI | Admin Home
</title>
@else
<title>
 ASPI | Eksekutif Home
</title>
@endif 

<div class="row">
  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-warning">
      <div class="inner">
        <h3>{{ $projects }}</h3>
        <p>Projects NSICCS</p>
      </div>
      <div class="icon">
        <i class="fas fa-hourglass-half"></i>
      </div>
        <a class="small-box-footer">NSICCS</a>
    </div>
  </div>

  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-success">
      <div class="inner">
        <h3>{{ $pprjdone }}</h3>
        <p>Projects Done NSICCS</p>
      </div>
      <div class="icon">
        <i class="fas fa-check"></i>
      </div>
        <a class="small-box-footer">NSICCS Done</a>
    </div>
  </div>

  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-purple">
      <div class="inner">
        <h3>{{ $qris }}</h3>
        <p>Projects QRIS</p>
      </div>
      <div class="icon">
        <i class="fas fa-history"></i>
      </div>
        <a class="small-box-footer">QRIS</a>
    </div>
  </div>

  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-info">
      <div class="inner">
        <h3>{{ $qrdone }}</h3>
        <p>Projects Done QRIS </p>
      </div>
      <div class="icon">
        <i class="fas fa-check-double"></i>
      </div>
        <a class="small-box-footer">QRIS Done</a>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-pink">
      <div class="inner">
        <h3>{{ $qrisspek }}</h3>
        <p>Projects Qris Spek</p>
      </div>
      <div class="icon">
        <i class="fas fa-history"></i>
      </div>
        <a class="small-box-footer">QRIS SPESIFIKASI</a>
    </div>
  </div>

  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-danger">
      <div class="inner">
        <h3>{{ $qrsdone }}</h3>
        <p>Projects Done Qris Spek</p>
      </div>
      <div class="icon">
        <i class="fas fa-check-double"></i>
      </div>
        <a class="small-box-footer">QRIS SPESIFIKASI Done</a>
    </div>
  </div>

  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-orange">
      <div class="inner">
        <h3>{{ $anggota }}</h3>
        <p>Anggota</p>
      </div>
      <div class="icon">
        <i class="ion ion-person-add"></i>
      </div>
        <a class="small-box-footer">Total Anggota</a>
    </div>
  </div>

  <div class="col-md-3 col-sm-6 col-12">
    <div class="small-box bg-maroon">
      <div class="inner">
        <h3>{{ $noanggota }}</h3>
        <p>Non Anggota </p>
      </div>
      <div class="icon">
        <i class="ion ion-stats-bars"></i>
      </div>
        <a class="small-box-footer">Total Non Anggota</a>
    </div>
  </div>
</div>

<!-- HIGHCHARTZ -->
<div class="row">
  <div class="col-md-6">
    <div class="card card-chart">
      <div class="card-body ">
        <figure class="highcharts-figure">
           <div id="PieProduk"></div>
        </figure>
      <!-- ./card body -->
      </div>
    <!-- ./card -->
    </div>
  <!-- ./col -->
  </div>

  <div class="col-md-6">
    <div class="card card-chart">
      <div class="card-body ">
        <figure class="highcharts-figure">
           <div id="BarProduk"></div>
        </figure>
      <!-- ./card body -->
      </div>
    <!-- ./card -->
    </div>
  <!-- ./col -->
  </div>
</div>


<div class="row">
  <div class="col-md-6">
    <div class="card card-chart">
      <div class="card-body">
         <figure class="highcharts-figure">
           <div id="PieQris"></div>
        </figure>
      <!-- ./card body -->
      </div>       
    <!-- ./card -->
    </div>
  <!-- ./col -->
  </div>

  <div class="col-md-6">
    <div class="card card-chart">
      <div class="card-body">
         <figure class="highcharts-figure">
           <div id="BarQris"></div>
        </figure>
      <!-- ./card body -->
      </div>       
    <!-- ./card -->
    </div>
  <!-- ./col -->
  </div>
<!-- ./row -->
</div>

<div class="row">
  <div class="col-md-6">
    <div class="card card-chart">
      <div class="card-body">
         <figure class="highcharts-figure">
           <div id="PieQrisspek"></div>
        </figure>
      <!-- ./card body -->
      </div>       
    <!-- ./card -->
    </div>
  <!-- ./col -->
  </div>

  <div class="col-md-6">
    <div class="card card-chart">
      <div class="card-body">
         <figure class="highcharts-figure">
           <div id="BarQrisspek"></div>
        </figure>
      <!-- ./card body -->
      </div>       
    <!-- ./card -->
    </div>
  <!-- ./col -->
  </div>
<!-- ./row -->
</div>

   
@endsection

@push('scripts')

<!-- Highchart -->
<script src="{{ url('assets/plugins/highcharts/highcharts.js') }}"></script>
<script src="{{ url('assets/plugins/highcharts/modules/exporting.js') }}"></script>
<script src="{{ url('assets/plugins/highcharts/modules/export-data.js') }}"></script>
<script src="{{ url('assets/plugins/highcharts/modules/accessibility.js') }}"></script>
<script src="{{ url('assets/plugins/highcharts/highcharts-3d.js') }}"></script>

<!-- Draw Graphs -->
<script>
  console.log("highcharts in");
  //JUMLAH PROJEK BY PRODUCT
  //Proses Data
  var projbyprod = <?php echo json_encode($projectperproduct) ?>;
  var projbyproddata = [];

  for(var i=0; i<projbyprod.length; i++){
    var temp = [];

    temp[0] = projbyprod[i].nama_product;
    temp[1] = projbyprod[i].jumlah_project;

    projbyproddata.push(temp);
  }

  //Draw Pie
  Highcharts.chart('PieProduk', {
    colors:['#D4BBDD','#FDBFAF','#98D7C2','#F09CA2','#D9CE88'],
    chart: {
      type: 'pie',
      options3d: {
        enabled: true,
        alpha: 50,
        beta: 0
      }
    },
    title: {
      text: 'Total Project NSICCS'
    },
    subtitle: {
      text: 'Berdasarkan Type Produk'
    },
    credits: {
      enabled: false
    },
    plotOptions: {
      pie: {
        allowPointSelect: true,
        cursor: 'pointer',
        depth: 50,
        dataLabels: {
          enabled: true,
          format: '{point.name}'
        }
      }
    },
    series: [{
      type: 'pie',
      name: 'Total Project',
      data: projbyproddata
    }]
  });

  //JUMLAH PROJEK BY PRODUCT
  //Proses Data
  var qrisbyprod = <?php echo json_encode($qrisperproduct) ?>;
  var qrisbyproddata = [];

  for(var i=0; i<qrisbyprod.length; i++){
    var temp = [];

    temp[0] = qrisbyprod[i].nama_product;
    temp[1] = qrisbyprod[i].jumlah_project;

    qrisbyproddata.push(temp);
  }

  //Draw Pie
  Highcharts.chart('PieQris', {
    colors:['#BCA88E','#3CACAE','#E98973','#FFB067'],
    chart: {
      type: 'pie',
      options3d: {
        enabled: true,
        alpha: 50,
        beta: 0
      }
    },
    title: {
      text: 'Total Project QRIS Rekomendasi'
    },
    subtitle: {
      text: 'Berdasarkan Type Produk'
    },
    credits: {
      enabled: false
    },
    plotOptions: {
      pie: {
        allowPointSelect: true,
        cursor: 'pointer',
        depth: 50,
        dataLabels: {
          enabled: true,
          format: '{point.name}'
        }
      }
    },
    series: [{
      type: 'pie',
      name: 'Total Project',
      data: qrisbyproddata
    }]
  });

  //JUMLAH PROJEK BY PRODUCT
  //Proses Data
  var qrisspekbyprod = <?php echo json_encode($qrisspekperproduct) ?>;
  var qrisspekbyproddata = [];

  for(var i=0; i<qrisspekbyprod.length; i++){
    var temp = [];

    temp[0] = qrisspekbyprod[i].nama_product;
    temp[1] = qrisspekbyprod[i].jumlah_project;

    qrisspekbyproddata.push(temp);
  }

  //Draw Pie
  Highcharts.chart('PieQrisspek', {
    colors:['#F0CCB0','#B97D60','#CCAFA5','#F3BC50'],
    chart: {
      type: 'pie',
      options3d: {
        enabled: true,
        alpha: 50,
        beta: 0
      }
    },
    title: {
      text: 'Total Project QRIS Spesifikasi'
    },
    subtitle: {
      text: 'Berdasarkan Type Produk'
    },
    credits: {
      enabled: false
    },
    plotOptions: {
      pie: {
        allowPointSelect: true,
        cursor: 'pointer',
        depth: 50,
        dataLabels: {
          enabled: true,
          format: '{point.name}'
        }
      }
    },
    series: [{
      type: 'pie',
      name: 'Total Project',
      data: qrisspekbyproddata
    }]
  });

  //JUMLAH PROJEK BY PRODUCT
  //Proses Data
 var projbyprod = <?php echo json_encode($projperprod) ?>;
  var projbyproddata = [];

  for(var i=0; i<projbyprod.length; i++){
    var temp = [];

    temp[0] = projbyprod[i].nama_product;
    temp[1] = projbyprod[i].jumlah_project;

    projbyproddata.push(temp);
  }

  //Draw Pie
  Highcharts.chart('BarProduk', {
    colors:['#D4BBDD','#FDBFAF','#98D7C2','#F09CA2','#D9CE88'],
    chart: {
      type: 'column',
    },
    title: {
      text: 'Total Project Done NSICCS'
    },
    subtitle: {
      text: 'Berdasarkan Type Produk'
    },
    credits: {
      enabled: false
    },

    xAxis: {
        categories: projbyproddata,
        crosshair: true
    },

    yAxis: {
        min: 0,
        title: {
            text: 'Jumlah Project'
        }
    },

    tooltip: {
      headerFormat: '<span style="font-size:12px">{point.key}</span><table>',
      pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
        '<td style="padding:0"><b>{point.y}</b></td></tr>',
      footerFormat: '</table>',
      shared: true,
      useHTML: true
    },

    plotOptions: {
      column: {
        pointPadding: 0.1,
        borderWidth: 0,
        pointPlacement: 0
      }
    },
    series: [{
      name: 'Total Project Done',
      data: projbyproddata,
      pointPadding: 0.1,
      borderWidth: 0,
    }

    ]
  });

  //JUMLAH PROJEK BY PRODUCT
  //Proses Data
 var qrisbyprod = <?php echo json_encode($qrisperprod) ?>;
  var qrisbyproddata = [];

  for(var i=0; i<qrisbyprod.length; i++){
    var temp = [];

    temp[0] = qrisbyprod[i].nama_product;
    temp[1] = qrisbyprod[i].jumlah_project;

    qrisbyproddata.push(temp);
  }

  //Draw Pie
  Highcharts.chart('BarQris', {
    colors:['#D4BBDD','#FDBFAF','#98D7C2','#F09CA2','#D9CE88'],
    chart: {
      type: 'column',
    },
    title: {
      text: 'Total Project Done QRIS Rekomendasi'
    },
    subtitle: {
      text: 'Berdasarkan Type Produk'
    },
    credits: {
      enabled: false
    },

    xAxis: {
        categories: qrisbyproddata,
        crosshair: true
    },

    yAxis: {
        min: 0,
        title: {
            text: 'Jumlah Project'
        }
    },

    tooltip: {
      headerFormat: '<span style="font-size:12px">{point.key}</span><table>',
      pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
        '<td style="padding:0"><b>{point.y}</b></td></tr>',
      footerFormat: '</table>',
      shared: true,
      useHTML: true
    },

    plotOptions: {
      column: {
        pointPadding: 0.1,
        borderWidth: 0,
        pointPlacement: 0
      }
    },
    series: [{
      name: 'Total QRIS Rekomendasi Done',
      data: qrisbyproddata,
      pointPadding: 0.1,
      borderWidth: 0,
    }

    ]
  });

    //JUMLAH PROJEK BY PRODUCT
  //Proses Data
 var qrisspekbyprod = <?php echo json_encode($qrspekperprod) ?>;
  var qrisspekbyproddata = [];

  for(var i=0; i<qrisspekbyprod.length; i++){
    var temp = [];

    temp[0] = qrisspekbyprod[i].nama_product;
    temp[1] = qrisspekbyprod[i].jumlah_project;

    qrisspekbyproddata.push(temp);
  }

  //Draw Pie
  Highcharts.chart('BarQrisspek', {
    colors:['#D4BBDD','#FDBFAF','#98D7C2','#F09CA2','#D9CE88'],
    chart: {
      type: 'column',
    },
    title: {
      text: 'Total Project Done QRIS Spesifikasi'
    },
    subtitle: {
      text: 'Berdasarkan Type Produk'
    },
    credits: {
      enabled: false
    },

    xAxis: {
        categories: qrisspekbyproddata,
        crosshair: true
    },

    yAxis: {
        min: 0,
        title: {
            text: 'Jumlah Project'
        }
    },

    tooltip: {
      headerFormat: '<span style="font-size:12px">{point.key}</span><table>',
      pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
        '<td style="padding:0"><b>{point.y}</b></td></tr>',
      footerFormat: '</table>',
      shared: true,
      useHTML: true
    },

    plotOptions: {
      column: {
        pointPadding: 0.1,
        borderWidth: 0,
        pointPlacement: 0
      }
    },
    series: [{
      name: 'Total QRIS Spesifikasi Done',
      data: qrisspekbyproddata,
      pointPadding: 0.1,
      borderWidth: 0,
    }

    ]
  });

</script>

@endpush
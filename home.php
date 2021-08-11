<?php
include "koneksi.php";
session_start();
if (isset($_SESSION['username'])){
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>RSA</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <!-- jQuery -->
  <script src="plugins/jquery/jquery.min.js"></script>
   <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
<!--   <div class="preloader flex-column justify-content-center align-items-center">
    <h1>RSA</h1>
    <img class="animation__shake" src="assets/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div> -->

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="home.php" class="brand-link">
      <img src="assets/img/logo.png" alt="Logo" class="brand-image elevation-3">
      <span class="brand-text font-weight-light">BTN</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="info">
          <a href="#" class="d-block">Welcome <?php echo $_SESSION["username"] ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <?php if ($_SESSION["level"] == 0) { ?>
         <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <a href="home.php?link=dashboard" class="nav-link active">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <li class="nav-header">Repository</li>
          <li class="nav-item">
            <a href="home.php?link=men_dokumen" class="nav-link">
              <i class="nav-icon far fa-file"></i>
              <p class="text">Data Nasabah</p>
            </a>
          </li>
          <li class="nav-header">Messaage</li>
          <li class="nav-item">
            <a href="home.php?link=nas_msg" class="nav-link">
              <i class="nav-icon far fa-envelope"></i>
              <p class="text">Messaage</p>
            </a> 
          </li>
          <li class="nav-item">
            <a href="home.php?link=rekap_msg" class="nav-link">
              <i class="nav-icon far fa-file"></i>
              <p class="text">Report Messaage</p>
            </a>
          </li>
          </li>
          <li class="nav-header">Manage Data</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Manage Data
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?link=men_user" class="nav-link">
                  <i class="far fa-user nav-icon"></i>
                  <p>User</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="home.php?link=men_nasabah" class="nav-link">
                  <i class="far fa-user nav-icon"></i>
                  <p>Nasabah</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-header">Profile</li>
          <li class="nav-item">
            <a href="home.php?link=men_profile" class="nav-link">
              <i class="nav-icon fas fa-sync"></i>
              <p class="text">Change Password</p>
            </a>
          </li>  
          <li class="nav-header">Logout</li>
          <li class="nav-item">
            <a href="proses_logout.php" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Logout</p>
            </a>
          </li>
        </ul>
        <?php }elseif ($_SESSION["level"] == 1) { ?>
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <a href="home.php?link=dashboard" class="nav-link active">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <li class="nav-header">Repository</li>
          <li class="nav-item">
            <a href="home.php?link=men_dokumen" class="nav-link">
              <i class="nav-icon far fa-file"></i>
              <p class="text">Data Nasabah</p>
            </a>
          </li>
          <li class="nav-header">Messaage</li>
          <li class="nav-item">
            <a href="home.php?link=nas_msg" class="nav-link">
              <i class="nav-icon far fa-envelope"></i>
              <p class="text">Messaage</p>
            </a>
          </li>
          </li>
          <li class="nav-header">Manage Data</li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Manage Data
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="home.php?link=men_nasabah" class="nav-link">
                  <i class="far fa-user nav-icon"></i>
                  <p>Nasabah</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-header">Profile</li>
          <li class="nav-item">
            <a href="home.php?link=men_profile" class="nav-link">
              <i class="nav-icon fas fa-sync"></i>
              <p class="text">Change Password</p>
            </a>
          </li>  
          <li class="nav-header">Logout</li>
          <li class="nav-item">
            <a href="proses_logout.php" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Logout</p>
            </a>
          </li>
        </ul>
        <?php }else{ ?>
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <a href="home.php?link=nas_dashboard" class="nav-link active">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Dashboard
              <i class="right fas fa-angle-left"></i>
            </p>
          </a>
          <li class="nav-header">Messaage</li>
          <li class="nav-item">
            <a href="home.php?link=nas_msg" class="nav-link">
              <i class="nav-icon far fa-envelope"></i>
              <p class="text">Messaage Admin</p>
            </a>
          </li>
          </li>
          <li class="nav-header">Profile</li>
          <li class="nav-item">
            <a href="home.php?link=men_profile" class="nav-link">
              <i class="nav-icon fas fa-sync"></i>
              <p class="text">Change Password</p>
            </a>
          </li>  
          <li class="nav-header">Logout</li>
          <li class="nav-item">
            <a href="proses_logout.php" class="nav-link">
              <i class="nav-icon far fa-circle text-danger"></i>
              <p class="text">Logout</p>
            </a>
          </li>
        </ul>
        <?php } ?>
       

      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <?php 
      if (isset($_GET['link'])) {
        $link = $_GET['link'];
        if ($_SESSION["level"] == 0) {
          switch ($link) {
            case 'men_user':
              include "manage_user.php";
              break;   
            case 'men_nasabah':
              include "manage_nasabah.php";
              break;  
            case 'men_dokumen':
              include "manage_dokumen.php";
              break;  
            case 'men_dok_detail':
              include "manage_dokumen_detail.php";
              break;  
            case 'men_profile':
              include "manage_profile.php";
              break;
            case 'nas_msg':
              include "nas_msg.php";
              break; 
            case 'nas_msg_detiail':
              include "nas_msg_detiail.php";
              break;
            case 'rekap_msg':
              include "rekap_msg.php";
              break;
            default:
              include "dashboard.php";
              break;
          }
        }elseif ($_SESSION["level"] == 1) {
          switch ($link) {  
            case 'men_nasabah':
              include "manage_nasabah.php";
              break;  
            case 'men_dokumen':
              include "manage_dokumen.php";
              break;  
            case 'men_dok_detail':
              include "manage_dokumen_detail.php";
              break;  
            case 'men_profile':
              include "manage_profile.php";
              break; 
            case 'nas_msg':
              include "nas_msg.php";
              break; 
            case 'nas_msg_detiail':
              include "nas_msg_detiail.php";
              break;
            default:
              include "dashboard.php";
              break;
          }
        }else{
          switch ($link) {
            case 'men_profile':
              include "manage_profile.php";
              break; 
            case 'nas_msg':
              include "nas_msg.php";
              break; 
            case 'nas_msg_detiail':
              include "nas_msg_detiail.php";
              break;
            case 'nas_dashboard':
              include "nas_dashboard.php";
              break; 
            default:
              include "nas_dashboard.php";
              break;
          }
        }

      }
    ?>
  
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="">BTN</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.1.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="plugins/moment/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="assets/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="assets/js/demo.js"></script>

<!-- DataTables  & Plugins -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="plugins/jszip/jszip.min.js"></script>
<script src="plugins/pdfmake/pdfmake.min.js"></script>
<script src="plugins/pdfmake/vfs_fonts.js"></script>
<script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
</body>
</html>
<?php 
}else{
  header('location: index.php');
}
?>
nn
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Dashboard</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
  <div class="container-fluid">
         
	<div class="card">
	  <div class="card-header">

	  </div>
	  <!-- /.card-header -->
	  <div class="card-body">
      <div class="row">
        <div class="col-lg-6 col-6">
              <!-- small box -->
          <?php 
          $sql = "SELECT * FROM tb_nasabah";
          $query  = mysqli_query($conn,$sql);
          ?>
              <div class="small-box bg-success">
                <div class="inner">
                  <h3><?php echo mysqli_num_rows($query) ?></h3>

                  <p>Nasabah KRP</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
              </div>
        </div>
        <div class="col-lg-6 col-6">
          <!-- small box -->
          <?php 
          $sql = "SELECT * FROM tb_user WHERE level != 0";
          $query  = mysqli_query($conn,$sql);
          ?>
          <div class="small-box bg-warning">
            <div class="inner">
              <h3><?php echo mysqli_num_rows($query) ?></h3>
              <p>Admin</p>
            </div>
            <div class="icon">
              <i class="ion ion-person"></i>
            </div>
          </div>
        </div>
      </div>
	  </div>
	  <!-- /.card-body -->
	</div>
 <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
</section>

<!-- /.content -->
<script type="text/javascript">

</script>

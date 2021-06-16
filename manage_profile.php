<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Manage Prolfie</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Profile</a></li>
          <li class="breadcrumb-item active">Change Password</li>
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
      <h3 class="card-title">Change Password</h3>
	  </div>
	  <!-- /.card-header -->
	  <div class="card-body">
	     <div class="col-12 col-md-8 offset-md-2">
         <form action="proses_profile.php" method="post" accept-charset="utf-8">
          <div class="form-group">
            <label class="form-control-label">Old Password</label>
            <input type="password" name="old_password" class="form-control">
          </div>
          <div class="form-group">
            <label class="form-control-label">New Password</label>
            <input type="password" name="new_password" class="form-control">
          </div>
          <input type="hidden" name="id_user" value="<?php echo $_SESSION['user_id'] ?>">
          <div class="row">
            <div class="col-12">
              <button type="" class="btn-sm btn-warning float-right">Reset</button>
            </div>
          </div>
         </form>
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

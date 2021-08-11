<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Manage Nasabah</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Manage data</a></li>
          <li class="breadcrumb-item active">Users</li>
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
	    <button type="button"class="btn btn-success pull-right" data-toggle="modal" id="btntambah">Insert Nasabah</button>
	  </div>
	  <!-- /.card-header -->
	  <div class="card-body">
	   	<div class="table-responsive">
			<table class="table" id="tb_user">
				<thead>
					<tr>
						<th>No</th>
						<th style="display: none;">id</th>
						<th>Code Nasabah</th>
						<th>Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				<?php 
					$no = 1;
					$sql = "SELECT * FROM tb_user WHERE level = 2";
					$query  = mysqli_query($conn,$sql);
					while ($data = mysqli_fetch_array($query)) { ?>
					<tr>
						<td><?php echo $no++; ?></td>
						<td style="display: none;"><?php echo $data['id']; ?></td>
						<td><?php echo $data['kode_nasabah'] ?></td>
						<td><?php echo $data['username'] ?></td>
						<td><?php echo $data['email'] ?></td>
						<td><a href="" class="btn btn-success btn-xs btnedit" data-toggle="modal" title="">Edit</a>&nbsp
						<a href="proses_nasabah.php?kode=3&id=<?php echo $data['id'];?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin.. ?');" title="">Delete</a></td>
					</tr>
				<?php
					}
				?>
				</tbody>
			</table>
		</div>
	  </div>
	  <!-- /.card-body -->
	</div>
	<!-- Modal -->
	<div id="tambah" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">Add Nasabah</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
		    <form action="proses_nasabah.php?kode=1&id=" method="POST" class="form" accept-charset="utf-8">
				<div class="form-group">
					<label> Code Nasabah :</label>
					<input type="text" class="form-control" name="kode_nasabah" value="" placeholder="Code Nasabah">
				</div>
				<div class="form-group">
					<label> Name :</label>
					<input type="text" class="form-control" name="username" value="" placeholder="Username">
				</div>
				<div class="form-group">
					<label> Email :</label>
					<input type="email" class="form-control" name="email" placeholder="Masukan Email" required="">
				</div>	
		   </div>
		  <div class="modal-footer">
		        <button type="submit" class="btn btn-primary">Tambah</button>
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</form>
	      </div>
	    </div>

	  </div>
	</div>


	<!-- Modal -->
	<div id="edit" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <h4 class="modal-title">Edit Nasabah</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
	       
		     <form action="proses_nasabah.php?kode=2&id=" method="POST" class="form" accept-charset="utf-8">
				<input style="display: none;" type="text" name="id" id="id" value="">
				<div class="form-group">
					<label> Code Nasabah :</label>
					<input type="text" class="form-control" readonly="true" value="" id="code_nasabah" placeholder="Code Nasabah">
				</div>
				<div class="form-group">
					<label> Name :</label>
					<input type="text" class="form-control" name="username" value="" id="username" placeholder="Username">
				</div>
				<div class="form-group">
					<label> Email :</label>
					<input type="email" class="form-control" name="email" id="email" placeholder="Masukan Email" required="">
				</div>
		   </div>
		  <div class="modal-footer">
		        <button type="submit" class="btn btn-primary">Edit</button>
		        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			</form>
	      </div>
	    </div>

	  </div>
	</div>
 <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
</section>

<!-- /.content -->
<script type="text/javascript">
$('#btntambah').click(function(){
	$('#tambah').modal({
		    show : true,
        	backdrop : 'static',
        	keyboard : false,
        
	})
})
$(function(){
    $('#tb_user').DataTable();
});

$(".btnedit").click(function(){
  $('#edit').modal({
  	       	show : true,
        	backdrop : 'static',
        	keyboard : false,
  });
  $("#id").val($(this).closest('tr').children()[1].textContent);
  $("#code_nasabah").val($(this).closest('tr').children()[2].textContent);
  $("#username").val($(this).closest('tr').children()[3].textContent);
  $("#email").val($(this).closest('tr').children()[4].textContent);

});
</script>


<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Manage Dokumen</h1>
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
	    <button type="button"class="btn btn-success pull-right" data-toggle="modal" id="btntambah">Tambah Dokumen</button>
	  </div>
	  <!-- /.card-header -->
	  <div class="card-body">
	   	<div class="table-responsive">
			<table class="table" id="tb_user">
				<thead>
					<tr>
						<th>No</th>
						<th style="display: none;">id</th>
						<th>Kode Nasabah</th>
						<th>Option</th>
					</tr>
				</thead>
				<tbody>
				<?php 
					$no = 1;
					$sql = "SELECT * FROM tb_nasabah";
					$query  = mysqli_query($conn,$sql);
					while ($data = mysqli_fetch_array($query)) { ?>
					<tr>
						<td><?php echo $no++; ?></td>
						<td style="display: none;"><?php echo $data['id']; ?></td>
						<td><?php echo $data['user_code']?></td>
						<td>
						<a href="home.php?link=men_dok_detail&idn=<?php echo $data['id']; ?>" class="btn btn-success btn-xs btnedit">Detail Data Nasabah</a>&nbsp
						<a href="proses_dokumen.php?kode=2&id=<?php echo $data['id'];?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin.. ?');" title="">Delete</a>
						</td>
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
	        <h4 class="modal-title">Tambah Dokumen</h4>
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	      </div>
	      <div class="modal-body">
		    <form action="proses_dokumen.php?kode=1" method="POST" class="form" accept-charset="utf-8" enctype="multipart/form-data">
		    	<input style="display: none;" type="text" name="id_user" id="id" value="<?php echo $_SESSION['user_id'] ?>">
				<div class="form-group">
					<label> Kode Nasabah :</label>
					<input type="text" class="form-control" name="kode_nasabah" placeholder="Masukan Kode Nasabah" required="">
				</div><div class="form-group">
					<label> NIK :</label>
					<input type="number" class="form-control" name="nik" placeholder="Masukan NIK" required="">
				</div>
				<div class="form-group">
					<label> Nama :</label>
					<input type="text" class="form-control" name="user_name" placeholder="Masukan Nama" required="">
				</div>
				<div class="form-group">
					<label> Email :</label>
					<input type="email" class="form-control" name="user_email" placeholder="Masukan Email" required="">
				</div>
				<div class="form-group">
					<label> Berkas :</label>
					<input type="file" class="form-control"  accept="application/pdf" name="file" placeholder="Pilih Berkas" required="">
				</div>	
		   </div>
		  <div class="modal-footer">
		        <button type="submit" class="btn btn-primary">Submit</button>
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
  $("#username").val($(this).closest('tr').children()[2].textContent);
  $("#level").val($(this).closest('tr').children()[3].textContent);
});
</script>

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

<?php 
include "rsa.php";
	$sql = "SELECT a.*, b.kode_nasabah, b.username, b.email, b.id as idu FROM tb_nasabah a LEFT JOIN tb_user b ON a.user_id = b.id WHERE a.user_id = '$_SESSION[user_id]'";
	$query 	= mysqli_query($conn,$sql);
	$data 	= mysqli_fetch_assoc($query);

	if(!empty($_POST['en'])) {
		if ($_POST['type'] == 0) {
			$msg = file_get_contents($data['file_path']);
			$msg_encrypted = my_decrypt($msg,$data['private_key']);
			$file = fopen($data['file_path'], 'wb');
			fwrite($file, $msg_encrypted);
			fclose($file);
			$sql= mysqli_query($conn,"UPDATE tb_nasabah SET status_en = '0' WHERE user_id = $_POST[idn]");
			?>
			<script type="text/javascript">
				window.location.href = 'home.php?link=men_dok_detail&idn=<?php echo $_SESSION['user_id']; ?>';
			</script>
			<?php
		}else{
			$msg = file_get_contents($data['file_path']);
			$msg_encrypted = my_encrypt($msg,$data['private_key']);
			$file = fopen($data['file_path'], 'wb');
			fwrite($file, $msg_encrypted);
			fclose($file); 
			$sql= mysqli_query($conn,"UPDATE tb_nasabah SET status_en = '1' WHERE user_id = $_POST[idn]");
			?>
			<script type="text/javascript">
				window.location.href = 'home.php?link=men_dok_detail&idn=<?php echo $_SESSION['user_id']; ?>';
			</script>
			<?php
		}
	}

?>

<!-- Main content -->
<section class="content">
  <div class="container-fluid">
         
	<div class="card">
	  <!-- /.card-header -->
	  <div class="card-body">
	  	<div class="table-responsive">
	  		<table class="table">
  				<tr>
  					<th>User Code</th>
  					<td><?php echo $data['kode_nasabah'] ?></td>
  				</tr>
  				<tr>
  					<th>User NIK</th>
  					<td><?php echo decrypt($data['user_nik'],$data['private_key']); ?></td>
  				</tr>
  				<tr>
  					<th>User Name</th>
  					<td><?php echo $data['username']; ?></td>
  				</tr>
  				<tr>
  					<th>User Email</th>
  					<td><?php echo $data['email']; ?></td>
  				</tr>
  				<tr>
  					<th>Dokumen</th>
  					<td>
  						<form action="home.php?link=nas_dasboard&idn=<?php echo $_SESSION['user_id']; ?>" method="POST" accept-charset="utf-8">
	  						<input type="hidden" name="en" value="true">
	  						<input type="hidden" name="type" value="<?php echo ($data['status_en'] == 1)?'0':'1' ?>">
	  						<input type="hidden" name="idn" value="<?php echo $_SESSION['user_id']; ?>">
	  						<button type="submit" class="btn <?php echo ($data['status_en'] == 1)?'btn-primary':'btn-danger' ?> btn-sm" id="btn-view"><?php echo ($data['status_en'] == 1)?'Tampilkan dan dekripsi dokumen':'Tutup dan enkripsi kembali dokumen' ?></button></td>
  						</form>
  				</tr>
  				<tr>
							<?php if ($data['status_en'] == 0) { ?>
								<td colspan="2" class="view_dok">
		  						<embed src="<?php echo $data['file_path'] ?>#toolbar=0&navpanes=0&scrollbar=0" type="application/pdf" width="100%" height="800">
		  					</td>
							<?php } ?>
  				</tr>
	  		</table>
	  	</div>
	  </div>
	  <!-- /.card-body -->
	</div>

 <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
</section>

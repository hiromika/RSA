<?php 
include "koneksi.php";
$kode = $_GET['kode'];
	if ($kode == '1'){
		$code = $_POST['kode_nasabah'];
		$email = $_POST['email'];
		$username = $_POST['username'];
		$pass = md5($code);
		$lv = 2;

		$sql = mysqli_query($conn,"INSERT INTO tb_user VALUES('','$code','$username','$pass','$email','$lv')");

		if ($sql) { ?>
			<script type="text/javascript">
				alert('Tambah Data Sukses !');
				window.location.href = 'home.php?link=men_nasabah';
			</script>
		<?php }else{ ?>
			<script type="text/javascript">
				alert('Tambah Data Gagal !');
				window.location.href = 'home.php?link=men_nasabah';
			</script>
		<?php 	

		}
	}elseif($kode == '2'){
		$id = $_POST['id'];
		$email = $_POST['email'];
		$username = $_POST['username'];

		$sql = mysqli_query($conn,"UPDATE tb_user SET username = '$username', email = '$email' WHERE id = $id");
		
		if ($sql) { ?>
			<script type="text/javascript">
				alert('Edit Data Sukses !');
				window.location.href = 'home.php?link=men_nasabah';
			</script>
		<?php }else{ ?>
			<script type="text/javascript">
				alert('Edit Data Gagal !');
				window.location.href = 'home.php?link=men_nasabah';
			</script>
		<?php 	
		}
	}elseif($kode == '3'){
		$id = $_GET['id'];
		$sql = mysqli_query($conn,"DELETE FROM tb_user WHERE id = '$id'");

		 if ($sql) { ?>
		 	<script type="text/javascript">
		 		alert('Delete Sukses !');
		 		window.location.href = 'home.php?link=men_nasabah';
		 	</script>
		 <?php }else{?>

		 	<script type="text/javascript">
		 		alert('Delete Gagal !');
		 		window.location.href = 'home.php?link=men_nasabah';
		 	</script>
		 <?php 
		 }
	}else{
		echo "Not Found !";
	}

 ?> 

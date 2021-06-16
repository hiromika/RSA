<?php 
include "koneksi.php";

	$id = $_POST['id_user'];
	$old_pass = md5($_POST['old_password']);
	$new_pass = md5($_POST['new_password']);

  	$cek = mysqli_query($conn,"SELECT * FROM tb_user WHERE id = '$id' AND password = '$old_pass'");

  	if (mysqli_num_rows($cek) > 0) {
	
		$sql = mysqli_query($conn,"UPDATE tb_user SET password = '$new_pass' WHERE id = $id");
		
		if ($sql) { ?>
			<script type="text/javascript">
				alert('Ganti password Sukses !');
				window.location.href = 'home.php?link=men_profile';
			</script>
		<?php }else{ ?>
			<script type="text/javascript">
				alert('Ganti password Gagal !');
				window.location.href = 'home.php?link=men_profile';
			</script>
		<?php 	
		}
	}else{ ?>
		<script type="text/javascript">
			alert('Ganti password gagal paassword lama salah!');
			window.location.href = 'home.php?link=men_profile';
		</script>
	<?php 
	}
 ?> 

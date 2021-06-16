<?php
include "koneksi.php";
include "rsa.php";
$kode = $_GET['kode'];
	if ($kode == '1'){
		$uid 	= $_POST['id_user'];
		$kode 	= $_POST['kode_nasabah'];
		$nik	= (string) $_POST['nik'];
		$nama 	= $_POST['user_name'];
		$email 	= $_POST['user_email'];

		$config = array(  
		  "digest_alg" => "sha512",  
		  "private_key_bits" => 2048,  
		  "private_key_type" => OPENSSL_KEYTYPE_RSA,  
		);  

		$res=openssl_pkey_new($config);  
		// Get private key  
		openssl_pkey_export($res, $privkey);  
		// Get public key  
		$pubkey=openssl_pkey_get_details($res);  
		$pubkey=$pubkey["key"]; 
		file_put_contents('privaate.key', $privkey);
		file_put_contents('public.key', $pubkey);
		  
		if (!$privateKey = openssl_pkey_get_private($privkey)) die('Loading Private Key failed');
		if (!$publicKey = openssl_pkey_get_public($pubkey)) die('Loading Public Key failed');

		$end_nik = encrypt($nik,$publicKey);
		$end_nama = encrypt($nama,$publicKey);
		$end_email = encrypt($email,$publicKey);

		$filename   = uniqid() . "-" . time();
		$extension  = pathinfo( $_FILES["file"]["name"], PATHINFO_EXTENSION ); 
		$basename   = $filename . "." . $extension; 

		$source       = $_FILES["file"]["tmp_name"];
		$destination  = "file_data/{$basename}";

		move_uploaded_file( $source, $destination );

		$msg = file_get_contents("file_data/{$basename}");
		$msg_encrypted = my_encrypt($msg, $privkey);
		$file = fopen("file_data/{$basename}", 'wb');
		fwrite($file, $msg_encrypted);
		fclose($file);

		$sql = mysqli_query($conn,"INSERT INTO tb_nasabah VALUES('','$uid','$kode','$end_nik','$end_nama','$end_email','$destination','$privkey','1')");
		if ($sql) { ?>
			<script type="text/javascript">
				alert('Input data Berhasil !');
				window.location.href = 'home.php?link=men_dokumen';
			</script>
		<?php }else{ 
			  // echo("Error description: " . mysqli_error($conn));
			?>
			<script type="text/javascript">
				alert('Input Gagal !');
				window.location.href = 'home.php?link=men_dokumen';
			</script>
		<?php 	
		}
	}else if ($kode == '2'){
		$id = $_GET['id'];
		$sql = mysqli_query($conn,"DELETE FROM tb_nasabah WHERE id = '$id'");

		 if ($sql) { ?>
		 	<script type="text/javascript">
		 		alert('Delete Sukses !');
		 		window.location.href = 'home.php?link=men_dokumen';
		 	</script>
		 <?php }else{?>

		 	<script type="text/javascript">
		 		alert('Delete Gagal !');
		 		window.location.href = 'home.php?link=men_dokumen';
		 	</script>
		 <?php 
		 }
	}

?>
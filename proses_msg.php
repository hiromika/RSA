<?php 
include "koneksi.php";
include "rsa.php";
session_start();
$kode = $_GET['kode'];
if ($kode == 1) {
	// code...
}elseif ($kode == 2) {
	$subject 	= $_POST['subject'];
	$msg 		= $_POST['msg'];
	$idu 		= $_POST['idu'];

	$cek = mysqli_query($conn,"SELECT * FROM tb_nasabah WHERE user_id = '$idu'");
	$data 	= mysqli_fetch_assoc($cek);

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

	$msg = encrypt($msg,$publicKey);

	if ($_SESSION['level'] == 1 or $_SESSION['level'] == 0) {
		$sql = mysqli_query($conn,"INSERT INTO tb_msg (id_send,id_recive,subject,msg,private_key) VALUES('$_SESSION[user_id]','$idu','$subject','$msg','$privkey')");
	}else{
		$sql = mysqli_query($conn,"INSERT INTO tb_msg (id_send,id_recive,subject,msg,private_key) VALUES('$idu','$data[user_log]','$subject','$msg','$privkey')");
	}
	

	if ($sql) { ?>
		<script type="text/javascript">
			alert('Send data Berhasil !');
			window.location.href = 'home.php?link=nas_msg';
		</script>
	<?php }else{ 
		  echo("Error description: " . mysqli_error($conn));
		?>
		<script type="text/javascript">
			alert('Gagal !');
			window.location.href = 'home.php?link=nas_msg';
		</script>
<?php 
		}
}
?>
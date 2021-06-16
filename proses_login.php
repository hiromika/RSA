<?php 

include "koneksi.php";

  $username = $_POST['username'];
  $password = $_POST['password'];

  $query = "SELECT * FROM tb_user WHERE username = '$username' AND password = md5('$password')";

  $sql = mysqli_query($conn,$query);


  if (mysqli_num_rows($sql) > 0) {

    $data = mysqli_fetch_assoc($sql);

    // set session
    session_start();
    $_SESSION["username"] = $data['username'];
    $_SESSION["user_id"] = $data['id'];
    $_SESSION["level"] = $data['level'];
    // end set session

    header("Location: home.php?link=dashboard");
 
  }else{ ?>
    <script type="text/javascript">
        alert('Username atau Password salah');
        window.location.href = 'index.php';
    </script>
  <?php 
  }

 ?>
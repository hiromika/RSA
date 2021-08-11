<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Message</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Message Admin</a></li>
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
      <button type="button"class="btn btn-success pull-right" data-toggle="modal" data-target="#tambah" id="btntambah">Reply</button>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      <div class="table-responsive">
          <?php 
          include "rsa.php";
          if ($_SESSION['level'] == 1 or $_SESSION['level'] == 0) {
            $sql = "SELECT 
            a.*, 
            b.username as s_user, 
            c.username as r_user
            FROM tb_msg a 
            LEFT JOIN tb_user b ON a.id_send = b.id 
            LEFT JOIN tb_user c ON a.id_recive = c.id  
            WHERE a.id_send = '$_SESSION[user_id]' OR a.id_recive = '$_SESSION[user_id]' 
            AND a.idm = '$_GET[idm]'";
          }else{
            $sql = "SELECT 
            a.*, 
            b.username as s_user, 
            c.username as r_user
            FROM tb_msg a 
            LEFT JOIN tb_user b ON a.id_send = b.id 
            LEFT JOIN tb_user c ON a.id_recive = c.id  
            WHERE a.id_send = '$_SESSION[user_id]' AND a.idm = '$_GET[idm]' OR a.id_recive = '$_SESSION[user_id]' AND a.idm = '$_GET[idm]'";
          }
            $query  = mysqli_query($conn,$sql);
            if (mysqli_num_rows($query) > 0) {
            $data = mysqli_fetch_array($query) ?>
              <table class="table" id="tb">
                  <tr>
                    <th>Date</th>
                    <td><?php echo date('Y-m-d H-i',strtotime($data['date'])); ?></td>
                  </tr>
                  <tr>
                    <th width="30%">From</th>
                    <td><?php
                      if ($_SESSION['level'] == 1 or $_SESSION['level'] == 0) {  
                        echo ($data['id_send'] == $_SESSION['user_id'])?"Me to $data[r_user]":"$data[s_user]";   
                      }else{  
                        echo ($data['id_send'] == $_SESSION['user_id'])?"Me to $data[r_user]":"$data[s_user]";  
                      } ?>
                    </td>
                  </tr>
                  <tr>
                    <th>Subject</th>
                    <td><?php echo $data['subject']; ?></td>
                  </tr>
              </table>
              <hr>
              <p><?php echo decrypt($data['msg'],$data['private_key']); ?></p>
          <?php } ?>
      </div>
    </div>
    <!-- /.card-body -->
  </div>

 <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
</section>

   <!-- Modal -->
  <div id="tambah" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">New Message</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
        <form action="proses_msg.php?kode=2" method="POST" class="form" accept-charset="utf-8">
        <?php if ($_SESSION['level'] == 1 or $_SESSION['level'] == 0) { ?>
        <div class="form-group">
          <label> User :</label>
          <select class="form-control" name="idu">
            <option selected="" disabled="">~ Select Nasabah ~</option>
          <?php   
          $sql = "SELECT * FROM tb_nasabah a 
          LEFT JOIN tb_user b ON a.user_id = b.id
          WHERE b.level = 2
          AND a.user_log = '$_SESSION[user_id]'
          ";
          $query  = mysqli_query($conn,$sql);
          while ($data = mysqli_fetch_array($query)) { ?> ?>
            <option value="<?php echo $data['id']; ?>"><?php echo $data['kode_nasabah'].' - '.$data['username'] ?></option>
          <?php } ?>
          </select>
        </div> 
        <?php }else{ ?>
          <input type="hidden" name="idu" value="<?php echo $_SESSION['user_id'] ?>">
        <?php } ?>
        <div class="form-group">
          <label> Subject :</label>
          <input type="text" name="subject" class="form-control">
        </div> 
        <div class="form-group">
          <label> Message :</label>
          <textarea name="msg" class="form-control"></textarea>
        </div>
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary">Send</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </form>
        </div>
      </div>

    </div>
  </div>

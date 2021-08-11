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
      <button type="button"class="btn btn-success pull-right" data-toggle="modal" data-target="#tambah" id="btntambah">New Message</button>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-hover" id="tb">
          <thead>
            <tr>
              <th width="10%">Date</th>
              <th width="30%">From</th>
              <th>Subject</th>
              <th>#</th>
            </tr>
          </thead>
          <tbody>
          <?php 
            $sql = "SELECT 
            a.*, 
            b.username as s_user, 
            c.username as r_user
            FROM tb_msg a 
            LEFT JOIN tb_user b ON a.id_send = b.id 
            LEFT JOIN tb_user c ON a.id_recive = c.id  
            WHERE a.id_send = '$_SESSION[user_id]' OR a.id_recive = '$_SESSION[user_id]' 
            ORDER BY a.idm DESC";
            $query  = mysqli_query($conn,$sql);
            if (mysqli_num_rows($query) > 0) {
            while ($data = mysqli_fetch_array($query)) { ?>
            <tr class="">
              <td><?php echo date('Y-m-d H:i',strtotime($data['date'])); ?></td>
              <?php  if ($_SESSION['level'] == 1 or $_SESSION['level'] == 0) { ?>
                <td><?php echo ($data['id_send'] == $_SESSION['user_id'])?"Me to $data[r_user]":"$data[s_user]";  ?></td>
              <?php }else{ ?>
                <td><?php echo ($data['id_send'] == $_SESSION['user_id'])?"Me to $data[r_user]":"$data[s_user]";  ?></td>
              <?php } ?>
              <td><?php echo $data['subject']; ?></td>
              <td><a href="home.php?link=nas_msg_detiail&idm=<?php echo $data['idm'] ?>" title=""><i class="fa fa-eye"></i></a></td>
            </tr>
          <?php }
          } ?>
          </tbody>
        </table>
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

<script type="text/javascript">
$(function(){
  $('#tb').DataTable( {
  "ordering": false
});
});
</script>
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Message</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Report Message</a></li>
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

    </div>
    <!-- /.card-header -->
    <div class="card-body">  
      <div class="row">
        <div class="col-2 offset-5">
          <div class="text-center mb-3">
            <form action="home.php?link=rekap_msg" method="POST" accept-charset="utf-8">
            <input class="form-control mb-1 text-center" type="text" id="date" name="tgl"  placeholder="Masukan range tanggal" required="">    

              <button class="btn btn-sm btn-success" type="submit">Search</button>
           
            </form>
          </div>
        </div>
      </div>
      <div class="table-responsive">
        <?php 
          if (isset($_POST['tgl'])) {
            $ex = explode('-', $_POST['tgl']);
            $awal = str_replace('/', '-', $ex[0]);
            $akhir = str_replace('/', '-', $ex[1]);
            $tgl = array(
              'awal'  => date('Y-m-d', strtotime($awal)),
              'akhir' => date('Y-m-d', strtotime($akhir)),
            );
          }
        ?>
        <table class="table table-striped" id="tbl">
        <?php   if (isset($tgl)) { ?>
          <h4 class="text-center">Rekap pada tanggal <?php echo $awal.' s/d '.$akhir; ?></h4>
        <?php } ?>
          <thead>
            <tr>
              <th>No</th>
              <th>Date</th>
              <th>Jumlah</th>
            </tr>
          </thead>
          <tbody>
            <?php 
              if (isset($tgl)) {
                $sql = "SELECT count(msg) as jumlah, DATE(date) as dt FROM tb_msg WHERE date BETWEEN '$tgl[awal]' AND '$tgl[akhir]' GROUP BY dt";
              }else{
                $sql = "SELECT count(msg) as jumlah, DATE(date) as dt FROM tb_msg GROUP BY dt";
              }
              $no = 1;
              $do = mysqli_query($conn,$sql);
              while ($data = mysqli_fetch_array($do)) { 
            ?>
            <tr>
              <td><?php echo $no++; ?></td>
              <td><?php echo $data['dt']; ?></td>
              <td><?php echo $data['jumlah']; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
    <!-- /.card-body -->
  </div>

 <!-- /.row (main row) -->
  </div><!-- /.container-fluid -->
</section>

<script type="text/javascript">
$(document).ready(function() {
  $('#tbl').DataTable( {
      dom: 'Bfrtip',
      buttons: [
          'excel', 'pdf', 'print'
      ]
  } );

  $('#date').daterangepicker({
    locale: {
            format: 'DD/MM/YYYY'
        }
  });
});
</script>
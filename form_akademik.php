<?php
    
    include_once 'db/base/DBConn.php';
    require_once 'db/tabel/bimbinganAkedemik.php';
    include_once 'top.php';

    //panggil file yang melakukan operasi db
    require_once 'db/base/DBConn.php';

    //buat variabel untuk memanggil class
    $objakedemik = new bimbinganAkedemik();
    

    //buat variabel utk menyimpan id
    $_idedit = isset($_GET['id']) ? $_GET['id'] : '';

    //buat pengecekan apakah datanya ada atau tidak
    if(!empty($_idedit)){
        $data = $objakedemik->getById($_idedit);
        // echo("<script>console.log('PHP: ".$data."');</script>");
    } else {
      $data = [];
    }

?>

<script src="js/form_validasi_kegiatan.js"></script>
<form class="form-horizontal" method="POST" name="form_akademik" action="prosesAkademik.php">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Text input-->
  <?php foreach($data as $data) ?>
      <div class="form-group">
        <label class="col-md-4 control-label" for="kode">Tanggal</label>  
        <div class="col-md-4">
        <input id="tanggal" name="tanggal" type="date" placeholder="Masukkan Tanggal" class="form-control input-md"
         value="<?php echo isset($data['tanggal']) ? $data['tanggal'] : ''?>">
          
        </div>
      </div>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Bimbingan Presensi </label>  
        <div class="col-md-4">
        <input id="bimbingan_presensi" name="bimbingan_presensi" type="text" placeholder="Masukkan Presensi" class="form-control input-md"
         value="<?php echo isset($data['bimbingan_presensi']) ? $data['bimbingan_presensi'] : ''?>" >
          
        </div>
      </div>

       <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Bimbingan Keuangan </label>  
        <div class="col-md-4">
        <input id="bimbingan_keuangan" name="bimbingan_keuangan" type="text" placeholder="Bimbingan Keuangan" class="form-control input-md"
         value="<?php echo isset($data['bimbingan_keuangan']) ? $data['bimbingan_keuangan'] : ''?>" >
          
        </div>
      </div>

        <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Bimbingan Akedemik</label>  
        <div class="col-md-4">
        <input id="bimbingan_akademik" name="bimbingan_akademik" type="text" placeholder="Bimbingan Akademik" class="form-control input-md"
         value="<?php echo isset($data['bimbingan_akademik']) ? $data['bimbingan_akademik'] : ''?>" >
          
        </div>
      </div>

        <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Kategori</label>  
        <div class="col-md-4">
        <input id="kategori_id" name="kategori_id" type="text" placeholder="Masukkan id kategori" class="form-control input-md"
         value="<?php echo isset($data['kategori_id']) ? $data['kategori_id'] : ''?>" >
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Semester</label>  
        <div class="col-md-4">
        <input id="semester" name="semester" type="text" placeholder="Semester" class="form-control input-md"
         value="<?php echo isset($data['semester']) ? $data['semester'] : ''?>" >
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">NIM</label>  
        <div class="col-md-4">
        <input id="nim" name="nim" type="text" placeholder="Masukkan NIM Anda" class="form-control input-md"
         value="<?php echo isset($data['nim']) ? $data['nim'] : ''?>" >   
          
        </div>
      </div>

  <? 'endforeach'; ?>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="proses"></label>
  <div class="col-md-8">
  <?php
    if(empty($_idedit)){
    ?>
      <input type="submit" name="proses" class="btn btn-success" value="Simpan"/>
    <?php
    }else{
      ?>
      <input type="hidden" name="idedit" value="<?php echo $_idedit?>"/>
      <input type="submit" name="proses" class="btn btn-primary" value="Update"/>
      <input type="submit" name="proses" class="btn btn-danger" value="Hapus"/>
    <?php
    }?>
  </div>
</div>
</fieldset>
</form>

<?php
    include_once 'bottom.php';
?>

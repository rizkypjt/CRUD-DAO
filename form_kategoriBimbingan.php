<?php
    
    include_once 'db/base/DBConn.php';
    require_once 'db/tabel/kategoriBimbingan.php';
    include_once 'top.php';

    //panggil file yang melakukan operasi db
    require_once 'db/base/DBConn.php';

    //buat variabel untuk memanggil class
    $obj_kegiatan = new kategoriBimbingan();
    

    //buat variabel utk menyimpan id
    $_idedit = isset($_GET['id']) ? $_GET['id'] : '';

    //buat pengecekan apakah datanya ada atau tidak
    if(!empty($_idedit)){
        $data = $obj_kegiatan->getById($_idedit);
        // echo("<script>console.log('PHP: ".$data."');</script>");
    } else {
      $data = [];
    }

?>

<script src="js/form_validasi_prodi.js"></script>
<form class="form-horizontal" method="POST" name="form_kategoriBimbingan" action="proses_kategoriBimbingan.php">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Text input-->
  <?php foreach($data as $data) ?>
 

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Nama </label>  
        <div class="col-md-4">
        <input id="nama" name="nama" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['nama']) ? $data['nama'] : ''?>" >
          
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

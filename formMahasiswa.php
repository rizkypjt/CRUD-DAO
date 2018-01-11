<?php
    
    include_once 'db/base/DBCoonMhs.php';
    require_once 'db/tabel/mahasiswa.php';
    include_once 'top.php';

    //panggil file yang melakukan operasi db
    // require_once 'db/base/DBConn.php';

    //buat variabel untuk memanggil class
    $obj = new mahasiswa();
    

    //buat variabel utk menyimpan id
    $_idedit = isset($_GET['nim']) ? $_GET['nim'] : '';

    //buat pengecekan apakah datanya ada atau tidak
    if(!empty($_idedit)){
        $data = $obj->getById($_idedit);
        // echo("<script>console.log('PHP: ".$data."');</script>");
    } else {
      $data = [];
    }

?>

<script src="js/form_validasi_kegiatan.js"></script>
<form class="form-horizontal" method="POST" name="formMahasiswa" action="prosesMahasiswa.php">
<fieldset>

<!-- Form Name -->
<legend>Form mahasiswa</legend>

<!-- Text input-->
  <?php foreach($data as $data) ?>
      <div class="form-group">
        <label class="col-md-4 control-label" for="kode">Nim</label>  
        <div class="col-md-4">
        <input id="nim" name="nim" type="text" placeholder="Masukkan Nim" class="form-control input-md"
         value="<?php echo isset($data['nim']) ? $data['nim'] : ''?>">
          
        </div>
      </div>

      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Nama </label>  
        <div class="col-md-4">
        <input id="nama" name="nama" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['nama']) ? $data['nama'] : ''?>" >
          
        </div>
      </div>

      
      <!-- Text input-->
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Tempat Lahir </label>  
        <div class="col-md-4">
        <input id="tmp_lahir" name="tmp_lahir" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['tmp_lahir']) ? $data['tmp_lahir'] : ''?>" >
          
        </div>
      </div>
    
     <!-- Text input-->
     <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Tanggal Lahir </label>  
        <div class="col-md-4">
        <input id="tgl_lahir" name="tgl_lahir" type="date" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['tgl_lahir']) ? $data['tgl_lahir'] : ''?>" >
          
        </div>
      </div>

        <!-- Text input-->
     <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Jenis Kelamin </label>  
        <div class="col-md-4">
        <input id="jk" name="jk" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['jk']) ? $data['jk'] : ''?>" >
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">ID Prodi</label>  
        <div class="col-md-4">
        <input id="prodi_id" name="prodi_id" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['prodi_id']) ? $data['prodi_id'] : ''?>" >
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Ipk</label>  
        <div class="col-md-4">
        <input id="ipk" name="ipk" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['ipk']) ? $data['ipk'] : ''?>" >
          
        </div>
      </div>

      
      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">Tahun Masuk</label>  
        <div class="col-md-4">
        <input id="thnmasuk" name="thnmasuk" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['thnmasuk']) ? $data['thnmasuk'] : ''?>" >
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">email </label>  
        <div class="col-md-4">
        <input id="email" name="email" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['email']) ? $data['email'] : ''?>" >
          
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="judul">ID Rombel </label>  
        <div class="col-md-4">
        <input id="rombel_id" name="rombel_id" type="text" placeholder="Masukkan " class="form-control input-md"
         value="<?php echo isset($data['rombel_id']) ? $data['rombel_id'] : ''?>" >
          
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

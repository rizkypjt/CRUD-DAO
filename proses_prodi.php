<?php
    require_once 'db/tabel/Prodi.php';

   
    $obj = new prodi();
    $_kode = @$_POST['kode'];
    $_nama = @$_POST['nama'];

    $_proses = @$_POST['proses'];
    $ar_data['kode'] = $_kode;
    $ar_data['nama'] = $_nama;
    
    $row = 0;
    if($_proses == "Simpan"){
        $row = $obj->insertData($ar_data);
    }elseif($_proses == "Update"){
        $_idedit = $_POST['idedit'];
        $row = $obj->updateById($_idedit, $ar_data);
    }elseif($_proses == "Hapus"){
        unset($ar_data);
        $_idedit = $_POST['idedit'];
        $row = $obj->removeById($_idedit);
    }
    //handeler jika gagal atau sukses
    if(!$row){
        echo "Gagal Proses";
    }else{
        //echo "Proses Sukses";
        //langsung direct ke daftar_kegiatan.php
        header('Location:index.php');
    }
?>
<?php
    require_once 'db/tabel/kategoriBimbingan.php';

   
    $objkategoriBimbingan = new kategoriBimbingan();
    $_nama = @$_POST['nama'];
   
    // $_narasumber = $_POST['narasumber'];
    // $_deskripsi = $_POST['deskripsi'];
    // $_kategori = $_POST['kategori'];

    $_proses = @$_POST['proses'];

  //  $ar_data['kode'] = $_kode;
    $ar_data['nama'] = $_nama;
    // $ar_data[] = $_narasumber;
    // $ar_data[] = $_deskripsi;
    // $ar_data[] = $_kategori;
    //buat operasi jika memilih button simpan, update atau hapus
    $row = 0;
    if($_proses == "Simpan"){
        $row = $objkategoriBimbingan->insertData($ar_data);
    }elseif($_proses == "Update"){
        $_idedit = $_POST['idedit'];
        $row = $objkategoriBimbingan->updateById($_idedit, $ar_data);
    }elseif($_proses == "Hapus"){
        unset($ar_data);
        $_idedit = $_POST['idedit'];
        $row = $objkategoriBimbingan->removeById($_idedit);
    }
    //handeler jika gagal atau sukses
    if(!$row){
        echo "Gagal Proses";
    }else{
        //echo "Proses Sukses";
        //langsung direct ke daftar_kegiatan.php
        header('Location:kategoriBimbingan.php');
    }
?>
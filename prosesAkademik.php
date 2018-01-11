<?php
    require_once 'db/tabel/bimbinganAkedemik.php';

   
    $objakedemik = new bimbinganAkedemik();
    
    $_tanggal = @$_POST['tanggal'];
    $_presensi = @$_POST['bimbingan_presensi'];
    $_keuangan = @$_POST['bimbingan_keuangan'];
    $_akademik = @$_POST['bimbingan_akademik'];
    $_kategori = @$_POST['kategori_id'];  
    $_semester = @$_POST['semester'];
    $_nim = @$_POST['nim'];


    

    $_proses = @$_POST['proses'];

        $ar_data['tanggal'] = $_tanggal;
        $ar_data['bimbingan_presensi'] = $_presensi;
        $ar_data['bimbingan_keuangan'] = $_keuangan;
        $ar_data['bimbingan_akademik'] = $_akademik;
        $ar_data['kategori_id'] = $_kategori;
        $ar_data['semester'] = $_semester;
        $ar_data['nim'] = $_nim;

    $row = 0;
    if($_proses == "Simpan"){
        $row = $objakedemik->insertData($ar_data);
    }elseif($_proses == "Update"){
        $_idedit = $_POST['idedit'];
        $row = $objakedemik->updateById($_idedit, $ar_data);
    }elseif($_proses == "Hapus"){
        unset($ar_data);
        $_idedit = $_POST['idedit'];
        $row = $objakedemik->removeById($_idedit);
    }

    //handeler jika gagal atau sukses
    if(!$row){

        echo "Gagal Proses";

    }else{

        header('Location:Akedemik.php');
    }
?>
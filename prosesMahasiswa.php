<?php
    require_once 'db/tabel/mahasiswa.php';
    
    $obj = new mahasiswa();

    $_nim = @$_POST['nim'];
    $_nama = @$_POST['nama'];
    $_tempat = @$_POST['tmp_lahir'];
    $_tanggal = @$_POST['tgl_lahir'];
    $_jk = @$_POST['jk'];
    $_prodi = @$_POST['prodi_id'];
    $_ipk = @$_POST['ipk'];
    $_tahun = @$_POST['thnmasuk'];
    $_email = @$_POST['email'];
    $_rombel = @$_POST['rombel_id'];

    $_proses = @$_POST['proses'];

    $ar_data['nim'] = $_nim;
    $ar_data['nama'] = $_nama;
    $ar_data['tmp_lahir'] = $_tempat;
    $ar_data['tgl_lahir'] = $_tanggal;
    $ar_data['jk'] = $_jk;
    $ar_data['prodi_id'] = $_prodi;
    $ar_data['ipk'] = $_ipk;
    $ar_data['thnmasuk'] = $_tahun;
    $ar_data['email'] = $_email;
    $ar_data['rombel_id'] = $_rombel;
    
    echo $_email . ":" . $_rombel;
    
    $test = implode(" ",$ar_data);
    echo "<script>console.log('$test');</script>";


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
        header('Location:mhs.php');
    }
?>
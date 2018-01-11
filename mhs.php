<?php
    include_once 'top.php';
    require_once 'db/base/DBCoonMhs.php';
    require_once 'db/tabel/mahasiswa.php';

    $obj = new mahasiswa();
    $rows = $obj->getAll();
?>
<h2>Daftar Mahasiswa</h2>
<div class="panel-header">
    <a class="btn icon-btn btn-success" href="formMahasiswa.php">
    <span class="glyphicon btn-glyphicon glyphicon-plus img-
    circle text-success"></span>
    Tambah Mahasiswa
    </a>
</div>
<br>
<?php
$obj = new mahasiswa();
$rows = $obj->getAll();
?>
<!-- Buat code javascript untuk memanggil table dan menggunakan fungsi datatable-->

    <script language="JavaScript">
        $(document).ready(function(){
        $('#example').DataTable();
        });
    </script>

<table id="example" class="table table-striped table-bordered"><!-- Beri id pada tag table untuk dideteksi javascript-->
    <thead>
    <tr class="active">
        <th>No</th><th>nim</th><th>nama</th><th>Tmpat Lahir</th><th>Tgl Lahir</th><th>jk</th><th>prodi</th><th>ipk</th>
        <th>tahun</th><th>email</th><th>rombel</th><th>Action</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $nomor = 1;
    foreach($rows as $row){
        echo '<tr><td>'.$nomor.'</td>';
        echo '<td>'.$row['nim'].'</td>';
        echo '<td>'.$row['nama'].'</td>';
        echo '<td>'.$row['tmp_lahir'].'</td>';
        echo '<td>'.$row['tgl_lahir'].'</td>';
        echo '<td>'.$row['jk'].'</td>';
        echo '<td>'.$row['prodi_id'].'</td>';
        echo '<td>'.$row['ipk'].'</td>';
        echo '<td>'.$row['thnmasuk'].'</td>';
        echo '<td>'.$row['email'].'</td>';
        echo '<td>'.$row['rombel_id'].'</td>';

        echo '<td><a href="viewMahasiswa.php?id='.$row['nim']. '">View</a> |';
        echo '<a href="formMahasiswa.php?id='.$row['nim']. '">Update</a></td>';
        echo '</tr>';
        $nomor++;
    }
    ?>
    </tbody>
</table>
<?php
include_once 'bottom.php';
?>
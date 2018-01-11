<?php
    include_once 'top.php';
    require_once 'db/tabel/mahasiswa.php';
    
    $objprodi = new mahasiswa();
    $id = $_GET['id'];
    $data = $objprodi->getById($id);
?>
<!--Buat tampilan dengan tabel-->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">View Prodi</h3>
            </div>
            <?php foreach($data as $data) ?>
                <div class="panel-body">
                    <table class="table">
                    <tr>
                    <td class="active">NIM </td><td>:</td><td><?php echo
                    $data['nim']?></td>
                    </tr>
                    <tr>
                     <td class="active">Nama</td><td>:</td><td><?php echo $data['nama']?></td>
                    <tr>
                         <td class="active">Tempat Lahir</td><td>:</td><td><?php echo $data['tmp_lahir']?></td>
                    </tr>
                    <tr>
                         <td class="active">Tanggal Lahir</td><td>:</td><td><?php echo $data['tgl_lahir']?></td>
                    </tr>
                    <tr>
                         <td class="active">JK</td><td>:</td><td><?php echo $data['jk']?></td>
                    </tr>
                         <td class="active">prodi</td><td>:</td><td><?php echo $data['prodi_id']?></td>
                    </tr>
                    <td class="active">IPK</td><td>:</td><td><?php echo $data['ipk']?></td>
                    </tr>
                    <tr>
                      <td class="active">Tahun Masuk</td><td>:</td><td><?php echo $data['thnmasuk']?></td>
                    </tr>
                    <td class="active">Rombel</td><td>:</td><td><?php echo $data['rombel_id']?></td>
                    </tr>    
                        </table>
                </div>
            <? 'endforeach'; ?>
        </div>
    </div>
</div>
<?php
    include_once 'bottom.php';
?>
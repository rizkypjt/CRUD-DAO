<?php
    include_once 'top.php';
    require_once 'db/tabel/bimbinganAkedemik.php';
    
    $objakedemik = new bimbinganAkedemik();
    $id = $_GET['id'];
    $data = $objakedemik->getById($id);
?>
<!--Buat tampilan dengan tabel-->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">View Akedemik</h3>
            </div>
            <?php foreach($data as $data) ?>
                <div class="panel-body">
                    <table class="table">
                       
                        <tr>
                        <td class="active">Tanggal</td><td>:</td><td><?php echo $data['tanggal']?></td>
                        </tr>
                        
                        <tr>
                        <td class="active">Bimbingan Presensi</td><td>:</td><td><?php echo $data['bimbingan_presensi']?></td>
                        
                        <tr>
                        <td class="active">Bimbingan Keuangan</td><td>:</td><td><?php echo $data['bimbingan_keuangan']?></td>
                        
                        <tr>
                        <td class="active">Bimbingan Akedemik</td><td>:</td><td><?php echo $data['bimbingan_akademik']?></td>

                        <tr>
                        <td class="active">Kategori </td><td>:</td><td><?php echo $data['kategori_id']?></td>

                        <tr>
                        <td class="active">Semester </td><td>:</td><td><?php echo $data['semester']?></td>
                        
                         <tr>
                         <td class="active">NIM</td><td>:</td><td><?php echo $data['nim']?></td>
                    
                    </table>
                </div>
           <? 'endforeach'; ?>
        </div>
    </div>
</div>
<?php
    include_once 'bottom.php';
?>
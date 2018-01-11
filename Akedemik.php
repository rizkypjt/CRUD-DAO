<!-- Bimbingan Akedimik -->

<?php 
    include_once 'top.php';
    require_once 'db/base/DBConn.php';
    require_once 'db/tabel/bimbinganAkedemik.php';
    $objakedemik = new bimbinganAkedemik();
    $rows = $objakedemik->getAll();
 ?>

    <div class="panel-header">
        <a class="btn icon-btn btn-success" href="form_akademik.php">
            <span class="glyphicon btn-glyphicon glyphicon-plus img-
            circle text-success"></span>
            Insert Akedemik
        </a>
    </div>
    </br>
    <script language="JavaScript">
        $(document).ready(function(){
            $('#example').DataTable();
        });
    </script>

    <table id="example" class="table table-striped table-bordered"><!-- Beri id pada tag table untuk dideteksi javascript-->
        <thead>
            <tr class="active">
                <th>No</th><th>Tanggal</th><th>Bimbingan Presensi</th><th>Bimbingan Keuangan</th><th>Bimbingan Akademik</th><th>kategori_id</th><th>Semester</th><th>NIM</th><th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $nomor = 1;
                foreach($rows as $row){
                //echo '<tr><td>'.$nomor.'</td>';
                    echo '<td>'.$row['id'].'</td>'; 
                    echo '<td>'.$row['tanggal'].'</td>';
                    echo '<td>'.$row['bimbingan_presensi'].'</td>';
                    echo '<td>'.$row['bimbingan_keuangan'].'</td>';
                    echo '<td>'.$row['bimbingan_akademik'].'</td>';
                    echo '<td>'.$row['kategori_id'].'</td>';
                    echo '<td>'.$row['semester'].'</td>';
                    echo '<td>'.$row['nim'].'</td>';

                   
                    echo '<td><a href="view_akademik.php?id='.$row['id']. '" class="btn btn-danger btn-sm">
                    <span class="glyphicon glyphicon-eye-open"></span></a>';
                    echo '<a href="form_akademik.php?id='.$row['id']. '" 
                    class="btn btn-info btn-sm"><span class="glyphicon glyphicon-edit"></span> </a>';
                    echo '</tr>';
                    $nomor++;
                }
            ?>
        </tbody>
    </table>
 <?php include_once 'bottom.php'; ?>


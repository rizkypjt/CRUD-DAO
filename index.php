<?php
    include_once 'top.php';
    require_once 'db/base/DBConn.php';
    require_once 'db/tabel/Prodi.php';
    require_once 'db/tabel/kategoriBimbingan.php';
    require_once 'db/tabel/bimbinganAkedemik.php';

    $obj = new prodi();
    $rows = $obj->getAll();
?>

    <h2>Insert Prodi</h2>
    <div class="panel-header">
        <a class="btn icon-btn btn-success" href="form_prodi.php">
            <span class="glyphicon btn-glyphicon glyphicon-plus img-
            circle text-success"></span>
            Insert Prodi
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
                <th>No </th><th>Kode</th><th>Nama</th><th>Action </th>
            </tr>
        </thead>
        <tbody>
            <?php
                $nomor = 1;
                foreach($rows as $row){
                //echo '<tr><td>'.$nomor.'</td>';
                    echo '<td>'.$row['id'].'</td>'; 
                    echo '<td>'.$row['kode'].'</td>';
                    echo '<td>'.$row['nama'].'</td>';
                    
                    echo '<td><a href="view_prodi.php?id='.$row['id']. '" class="btn btn-danger btn-sm">
                    <span class="glyphicon glyphicon-eye-open"></span></a> | ';
                    echo '<a href="form_prodi.php?id='.$row['id']. '" 
                    class="btn btn-info btn-sm"><span class="glyphicon glyphicon-edit"></span> </a>';
                    echo '</tr>';
                    $nomor++;
                }
            ?>   
        </tbody>
    </table>
    <a href="grafik_prodi.php" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-list"></span> GRAFIK PRODI</a>           
<?php include_once 'bottom.php'; ?>


<?php
    include_once 'top.php';
    require_once 'db/tabel/kategoriBimbingan.php';
    
    $objkategoriBimbingan = new kategoriBimbingan();
    $id = $_GET['id'];
    $data = $objkategoriBimbingan->getById($id);
?>
<!--Buat tampilan dengan tabel-->
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">View BimbinganAkedimik</h3>
            </div>
            <?php foreach($data as $data) ?>
                <div class="panel-body">
                    <table class="table">
                    <tr>
                    <td class="active">Nama</td><td>:</td><td><?php echo
                    $data['nama']?></td>
                    </table>
                </div>
            <? endforeach; ?>
        </div>
    </div>
</div>
<?php
    include_once 'bottom.php';
?>
<?php
    
    require_once 'db/base/DBConn.php';

    class kategoriBimbingan extends DBConn {

        public function __construct(){
            parent::__construct("kategori_bimbingan");
        }
        
        function insert($data) {
            return "INSERT INTO " . $this->namaTable . "(nama) VALUES ('" . $data['nama'] ."')";
        }

        function update($id, $data) {
            return "UPDATE " . $this->namaTable . " SET nama='" . $data['nama'] . "' WHERE id=" .$id;
        }

    }
?>
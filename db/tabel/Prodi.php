<?php
	
	require_once 'db/base/DBConn.php';

    class Prodi extends DBConn {

        public function __construct(){
            parent::__construct("prodi");
        }
        
        function insert($data) {
        	return "INSERT INTO " . $this->namaTable . "(kode, nama) VALUES ('" . $data['kode'] . "','" . $data['nama'] . "')";
        }

        function update($id, $data) {
        	return "UPDATE " . $this->namaTable . " SET kode='" . $data['kode'] . "', nama='" . $data['nama'] . "' WHERE id=" .$id;
        }

    }
?>
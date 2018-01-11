<?php
    
    require_once 'db/base/DBConn.php';

    class bimbinganAkedemik extends DBConn {

        public function __construct(){
            parent::__construct("bimbingan_akademik");
        }
        
        function insert($data) {
            return "INSERT INTO " 
                    . $this->namaTable 
                    . "(tanggal, bimbingan_presensi, 
                        bimbingan_keuangan, bimbingan_akademik, 
                        kategori_id, semester, nim) VALUES ('" 
                    . $data['tanggal'] . "','" 
                    . $data['bimbingan_presensi'] .  "','" 
                    . $data['bimbingan_keuangan'] .  "','" 
                    . $data['bimbingan_akademik'] .  "'," 
                    . $data['kategori_id'] .  "," 
                    . $data['semester'] . ",'"  
                    . $data['nim'] ."')";
        }

        function update($id, $data) {
            return "UPDATE " . $this->namaTable . " SET tanggal='" . $data['tanggal'] . "', bimbingan_presensi='" . $data['bimbingan_presensi']. "', bimbingan_keuangan='" . $data['bimbingan_keuangan'] . 
            "', bimbingan_akademik='" . $data['bimbingan_akademik'] . "', kategori_id='" . $data['kategori_id'] . "', semester='" . $data['semester']. "', nim='" . $data['nim'] ."'  WHERE id=" .$id;
        }

    }
?>
<?php
	
	require_once 'db/base/DBCoonMhs.php';

    class mahasiswa extends DBCoonMhs {

        public function __construct(){
            parent::__construct("mahasiswa");
        }
        
        function insert($data) {
            return "INSERT INTO " 
                    . $this->namaTable 
                    . "(nim, nama, tmp_lahir, tgl_lahir,
                        jk, prodi_id, ipk, thnmasuk,
                        email, rombel_id) VALUES (" 
                    . $data['nim'] . ",'" 
                    . $data['nama'] . "','" 
                    . $data['tmp_lahir'] . "','" 
                    . $data['tgl_lahir'] . "','" 
                    . $data['jk'] . "'," 
                    . $data['prodi_id'] . "," 
                    . $data['ipk'] . "," 
                    . $data['thnmasuk'] . ",'" 
                    . $data['email'] . "'," 
                    . $data['rombel_id'] .")";
        }

        function update($id, $data) {
            return "UPDATE " . $this->namaTable . " SET nama='" . $data['nama'] . "', nama='" . $data['nama'] . "', tmp_lahir='" . $data['tmp_lahir'] . "', tgl_lahir='" . $data['tgl_lahir'] . "', jk='" . $data['jk'] .  
            "', prodi_id='" . $data['prodi_id'] .  "', ipk='" . $data['ipk'] . "', thnmasuk='" . $data['thnmasuk'] .  "', email='" . $data['email'] . "', rombel_id='" . $data['rombel_id'] .   "' WHERE nim=" .$nim;
        }

    }
?>
<?php
    
    require_once 'DAO.php';
    require_once 'Koneksi.php';

    abstract class DBCoonMhs implements DAO {

        protected $koneksi = null;
        protected $namaTable;

        protected abstract function update($nim, $data);
        protected abstract function insert($data);

        public function __construct($namaTable) {
            $this->namaTable = $namaTable;
            $database = new Koneksi();
            $this->koneksi = $database->getKoneksi();
        }

        public function insertData($data) {
            return $this->koneksi->query($this->insert($data));
        }

        public function updateById($nim, $data) {
            return $this->koneksi->query($this->update($nim, $data));
        }

        public function getAll() {
            $sql = "SELECT * FROM " . $this->namaTable;
            $ps = $this->koneksi->prepare($sql);
            $ps->execute();
            return $ps->fetchAll();
        }

        public function getById($id) {
            $sql = "SELECT * FROM " . $this->namaTable . " WHERE nim=" . $id;
            $con = $this->koneksi->prepare($sql);
            $con->execute();
            return $con->fetchAll();
        }

        public function removeById($id) {
            $sql = "DELETE FROM " . $this->namaTable . " WHERE nim=" . $id;
            return $this->koneksi->exec($sql);
        }

        public function getStatistik(){
            $sql= "SELECT a.nama,COUNT(b.id) as jumlah from prodi a LEFT JOIN rombel b ON a.id=b.rombel GROUP BY a.id";
            $con= $this->koneksi->prepare($sql);
            $con->execute();
            return $con->fetchAll();
        }
    }
?>
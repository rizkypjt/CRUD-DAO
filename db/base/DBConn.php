<?php
    
    require_once 'DAO.php';
    require_once 'Koneksi.php';

    abstract class DBConn implements DAO {

        protected $koneksi = null;
        protected $namaTable;

        protected abstract function update($id, $data);
        protected abstract function insert($data);

        public function __construct($namaTable) {
            $this->namaTable = $namaTable;
            $database = new Koneksi();
            $this->koneksi = $database->getKoneksi();
        }

        public function insertData($data) {
            return $this->koneksi->query($this->insert( $data));
        }

        public function updateById($id, $data) {
            return $this->koneksi->query($this->update($id, $data));
        }

        public function getAll() {
            $sql = "SELECT * FROM " . $this->namaTable;
            $ps = $this->koneksi->prepare($sql);
            $ps->execute();
            return $ps->fetchAll();
        }

        public function getById($id) {
            $sql = "SELECT * FROM " . $this->namaTable . " WHERE id=" . $id;
            $con = $this->koneksi->prepare($sql);
            $con->execute();
            return $con->fetchAll();
        }

        public function removeById($id) {
            $sql = "DELETE FROM " . $this->namaTable . " WHERE id=" . $id;
            return $this->koneksi->exec($sql);
        }

        public function getStatistik(){
            $sql = "select prodi.nama, count(mahasiswa.nim) as jumlah from prodi left join mahasiswa on prodi.id = mahasiswa.prodi_id group by prodi.nama";
            $ps = $this->koneksi->prepare($sql);
            $ps->execute();
            return $ps->fetchAll();
          }
    }
?>
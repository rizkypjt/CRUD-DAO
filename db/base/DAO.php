<?php
interface DAO {
	public function insertData($data);
	public function updateById($id, $data);
    public function getAll();
    public function getById($id);
    public function removeById($id); 
}
?>
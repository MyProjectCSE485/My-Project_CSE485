<?php
	class Database {
		private $host = "localhost";
		private $user = "root";
		private $password = "";
		private $db = "bandienthoai";
		var $conn;
		protected $table;

		public function __construct() {
			$this->conn = new mysqli("localhost", "root", "", "bandienthoai");
			mysqli_set_charset($this->conn, "utf8");
			//$db = new mysqli("localhost", "root", "", "bandienthoai");
			//var_dump($db);

			if($this->conn->connect_error) {
				
				echo $this->conn->connect_error;
				die('Khong ket noi duoc database');
			}
		}

		// public function getAll() {
		// 	$rs = "";
		// 	$query = "select * from tbl_sanpham";
		// 	$rs = mysqli_query($conn, $query);
		// 	return $rs;
		// }

		public function getMenu(){
			//var_dump($this->conn);
			$result =  mysqli_query($this->conn, 'SELECT * FROM tbl_menu');
			$arrMenu = array();
			if(mysqli_num_rows($result)>0){
				while($row = mysqli_fetch_assoc($result)){
					//var_dump($row);
					array_push($arrMenu, $row);
				}
			}
			return $arrMenu;
		}

		public function getloaisanpham($loaiCha){
			if(!isset($loaiCha) || $loaiCha == '' || $loaiCha == null){
				$loaiCha = 0;
			}
			$result = mysqli_query($this->conn, "SELECT * FROM tbl_loaisanpham where LoaiCha=".$loaiCha);

			$arrloaisanpham = array();
			if(mysqli_num_rows($result)>0){
				while($row = mysqli_fetch_assoc($result)){
					array_push($arrloaisanpham, $row);
				}
			}
			return $arrloaisanpham;
		}

		// public function getsanpham(){
		// 	$result = mysqli_query($this->conn, 'SELECT * FROM tbl_sanpham');
		// 	$arrsanpham = array();
		// 	if(mysqli_num_rows($result)>0){
		// 		while($row = mysqli_fetch_assoc($result)){
		// 			array_push($arrsanpham, $row);
		// 		}
		// 	}
		// 	return $arrsanpham;
		// }
	}
?>
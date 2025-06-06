<?php
class DataBase{

	private $BaseDatos = 'cervantes2025';
	private $Servidor = 'localhost';
	private $Usuario = 'root';
	private $Clave = '';

	function Conexion() {
		$mysqli = new mysqli($this->Servidor, $this->Usuario, $this->Clave, $this->BaseDatos);
		$mysqli->set_charset("utf8");
		if ($mysqli->connect_error) {
	    die('Error de Conexión (' . $mysqli->connect_errno . ') '
				. $mysqli->connect_error);
		}else{
			return $mysqli;
			//$mysqli -> mysqli_close();
		}
	}

	function Execute($q){
		$conexion = $this->Conexion();
		return $conexion->query($q);
	}

	function Insert($table, $data){ // con array - key - value
		$conexion = $this->Conexion();
		// Columnas
		$columns = "(";
		$coma = "";
		foreach ($data as $key => $value) {
			$columns .= $coma."`".$key."`";
			$coma = ",";
		}
		$columns .= ")";
		//valores
		$values = "(";
		$coma = "";
		foreach ($data as $key => $value) {
			$values .= $coma."'".$value."'";
			$coma = " ,";
		}
		$values .= ")";
		$sentence = "INSERT INTO $table $columns VALUES $values";
		if($conexion->query($sentence)){
			$resultArray = array('result' => true, 'insert_id' => $conexion->insert_id );
		}else{
			$resultArray = array('result' => false, 'error' => $conexion->connect_errno.":".$conexion->error );
		}
		return $resultArray;
	}

	function Update($table, $data, $condition){ // con array - key - value
		$conexion = $this->Conexion();
		// Cols to edit
		$coma = "";
		$cols_and_vals = "";
		foreach ($data as $key => $value) {
			$cols_and_vals .= $coma."`".$key."` = '".$value."'";
			$coma = ", ";
		}
		// Where condition
		$and = "";
		$condition_cols_vals = "";
		foreach ($condition as $key => $value) {
			$condition_cols_vals .= $and."`".$key."` = '".$value."'";
			$and = " AND ";
		}

		$sentence = "UPDATE $table SET $cols_and_vals WHERE $condition_cols_vals";
		if($conexion->query($sentence)){
			$resultArray = array('result' => true, 'affected_rows' => $conexion->affected_rows );
		}else{
			$resultArray = array('result' => false, 'error' => $conexion->connect_errno.":".$conexion->error );
		}
		return $resultArray;
	}

	function Search($data_to_search, $table, $columns, $condition_add=""){
		// Busqueda avanzada
		$conexion = $this->Conexion();
		$cols_vals = "";
		$coma = "";
		foreach ($columns as $key) {
			$cols_vals .= $coma.$key;
			$coma = ", ";
		}
		$q = "SELECT * FROM $table WHERE MATCH ( $cols_vals ) AGAINST ( '$data_to_search' IN NATURAL LANGUAGE MODE) ".$condition_add;
		return $conexion->query($q);
	}
}

$objDataBase = new DataBase;

?>

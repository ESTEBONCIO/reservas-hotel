<?php

require_once "conexion.php";

Class ModeloRecorrido{

	/*=============================================
	mostrar recorrido
	=============================================*/
	
	static public function mdlMostrarRecorrido($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

		$stmt -> execute();

		return $stmt -> fetchAll();
		$stmt -> close();
		
		$stmt = null;

	}

}
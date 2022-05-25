<?php

Class ControladorPlanes{

	/*=============================================
	Mostrar banner
	=============================================*/

	static public function ctrMostrarPlanes(){

		$tabla = "planes";

		$respuesta = ModeloPlanes::mdlMostrarPlanes($tabla);

		return $respuesta;

	}

}
<?php

Class ControladorRecorrido{

	/*=============================================
	Mostrar recorrido
	=============================================*/

	static public function ctrMostrarRecorrido(){

		$tabla = "recorrido";

		$respuesta = ModeloRecorrido::mdlMostrarRecorrido($tabla);

		return $respuesta;

	}

}
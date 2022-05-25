<?php
/*clase para la conexión*/

class Conexion {
/*creamos un método static y publico que llamaremos conectar*/
	static public function conectar(){
/* creamos una variable link que se convertirá en un objeto PDO que nos permitir conectarnos     a la base de datos*//*tiene la siguiente sintaxis: una propiedad mysql del tipo localhost, luego el nombre de la base de datos dbname,(todo se escribe pegado y sin espacios), luego el nombre de usuario (para bases de datos en localhost por lo general es root), finalmente la clave(para localhost por lo general no tiene clave. 
		$link = new PDO("mysql:host=localhost;dbname=reservas-hotel",
	            "root",
	            "");
/*para no tener problemas con los caracteres especiales enviamos un método para ejecutar siempre bajo la estructura utf8*/
$link = new PDO("mysql:host=localhost;dbname=reservas-hotel","root","");		
$link -> exec("set names utf8");
		return $link;
	}
}

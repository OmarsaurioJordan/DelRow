<?php
/*
Codigo php administrador de bases de datos para el videojuego
DelRow, por Omarsaurio 2021, este codigo se llamara periodicamente
por el servidor, las tareas a realizar son:
- limpiar los resultados de guerra oficial y semanal

Tipos de dato:
t: tinytext, i: tinyint, x: text, d: date, f:float, n:int, q:timestamp

Tabla delrow_users:
correo|password|nombre|zona|emocion|genero|piel|pelo|tinte|barba|camisa|pantalon|rol|zodiaco|comport|txtl|texto|registro|modifica|activo|editar
t     |t       |t     |i   |i      |i     |i   |i   |i    |i    |i     |i       |i  |i      |i      |i   |x    |d       |d       |d     |i 
los textos no deben tener ningun '|'

Tabla registro:
correo| password|nombre|registro|software
t     |t        |t     |d       |t

Tabla delrow_zonas:
zona|poblacion|activos|feminas|rol|emocion|zodiaco|record
i   |n        |n      |n      |x  |x      |x      |n
rol = rol x comport

Tabla delrow_war:
zona|puntaje|cazados|asedio|conquista|duracion|disponibles|poblacion|vida|semanal|acumulado|ofi_puntaje|ofi_cazados|ofi_asedio|ofi_conquista|ofi_duracion|ofi_disponibles|ofi_poblacion|ofi_vida|max_puntaje|max_cazados|max_asedio|max_disponibles|max_poblacion|modificacion
i   |f      |f      |f     |f        |f       |f          |f        |f   |n      |n        |f          |n          |n         |n            |n           |n              |n            |n       |f          |n          |n         |n              |n            |q

*/

// datos de conexion y servidor
$server = 'localhost';
$username = 'u630689278_omi';
$password = '10382393744IngElectronica';
$database = 'u630689278_games';

function servicio()
{
	global $server, $username, $password, $database;
	// hacer la conexion con el servidor
	$conexion = mysqli_connect($server, $username, $password);
	if (!$conexion)
	{
		exit;
	}
	if (!mysqli_select_db($conexion, $database))
	{
		mysqli_close($conexion);
		exit;
	}
	limpiar($conexion);
	mysqli_close($conexion);
}

// funciones mayores de la llamada

function limpiar($conexion)
{
	mysqli_query($conexion, "UPDATE delrow_war SET puntaje='0', cazados='0', asedio='0', conquista='0', duracion='0', disponibles='0', poblacion='0', vida='0', semanal='0', ofi_puntaje='0', ofi_cazados='0', ofi_asedio='0', ofi_conquista='0', ofi_duracion='0', ofi_disponibles='0', ofi_poblacion='0', ofi_vida='0'");
}

// realizar la funcion main
servicio();
?>

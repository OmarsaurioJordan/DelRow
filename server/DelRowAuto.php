<?php
/*
Codigo php administrador de bases de datos para el videojuego
DelRow, por Omarsaurio 2021, este codigo se llamara periodicamente
por el servidor, las tareas a realizar son:
- poner campo editar de delrow_users en 1
- eliminar filas de registro mayores a T dias
- actualizar datos de la tabla delrow_zonas

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

// constantes del juego
$esactivo = '7'; // dias para considerar a alguien activo

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
	editar($conexion);
	viejitos($conexion);
	zonas($conexion);
	mysqli_close($conexion);
}

// funciones mayores de la llamada

function editar($conexion)
{
	mysqli_query($conexion, "UPDATE delrow_users SET editar='1'");
}

function viejitos($conexion)
{
	mysqli_query($conexion, "DELETE FROM registro WHERE registro<=(CURRENT_DATE() - INTERVAL 1 day)");
}

function zonas($conexion)
{
	global $esactivo;
	for ($z = 0; $z < 17; $z++)
	{
		// informacion general
		mysqli_query($conexion, "UPDATE delrow_zonas SET poblacion=(SELECT COUNT(*) FROM delrow_users WHERE zona='$z') WHERE zona='$z'");
		mysqli_query($conexion, "UPDATE delrow_zonas SET activos=(SELECT COUNT(*) FROM delrow_users WHERE zona='$z' AND activo>=(CURRENT_DATE() - INTERVAL $esactivo day)) WHERE zona='$z'");
		mysqli_query($conexion, "UPDATE delrow_zonas SET feminas=(SELECT COUNT(*) FROM delrow_users WHERE zona='$z' AND genero='0') WHERE zona='$z'");
		mysqli_query($conexion, "UPDATE delrow_zonas SET record=GREATEST(activos, record) WHERE zona='$z'");
		
		// roles mas comportamientos
		$res = "";
		for ($i = 0; $i < 28; $i++)
		{
			for ($k = 0; $k < 7; $k++)
			{
				$qq = mysqli_query($conexion, "SELECT COUNT(*) FROM delrow_users WHERE zona='$z' AND rol='$i' AND comport='$k'");
				if ($qq)
				{
					if ($res == "") {
						$res .= "" .+ mysqli_fetch_row($qq)[0];
					}
					elseif ($k == 0)
					{
						$res .= ":" .+ mysqli_fetch_row($qq)[0];
					}
					else {
						$res .= "," .+ mysqli_fetch_row($qq)[0];
					}
				}
				else
				{
					$res = "";
					break;
				}
			}
		}
		mysqli_query($conexion, "UPDATE delrow_zonas SET rol='$res' WHERE zona='$z'");
		
		// zodiaco
		$res = "";
		for ($i = 0; $i < 12; $i++)
		{
			$qq = mysqli_query($conexion, "SELECT COUNT(*) FROM delrow_users WHERE zona='$z' AND zodiaco='$i'");
			if ($qq)
			{
				if ($res == "") {
					$res .= "" .+ mysqli_fetch_row($qq)[0];
				}
				else {
					$res .= "," .+ mysqli_fetch_row($qq)[0];
				}
			}
			else
			{
				$res = "";
				break;
			}
		}
		mysqli_query($conexion, "UPDATE delrow_zonas SET zodiaco='$res' WHERE zona='$z'");
		
		// emocion
		$res = "";
		for ($i = 0; $i < 7; $i++)
		{
			$ii = $i * 3;
			$if = ($i + 1) * 3;
			$qq = mysqli_query($conexion, "SELECT COUNT(*) FROM delrow_users WHERE zona='$z' AND emocion>='$ii' AND emocion<'$if'");
			if ($qq)
			{
				if ($res == "") {
					$res .= "" .+ mysqli_fetch_row($qq)[0];
				}
				else {
					$res .= "," .+ mysqli_fetch_row($qq)[0];
				}
			}
			else
			{
				$res = "";
				break;
			}
		}
		mysqli_query($conexion, "UPDATE delrow_zonas SET emocion='$res' WHERE zona='$z'");
	}
}

// realizar la funcion main
servicio();
?>

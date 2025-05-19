<?php
/*
Codigo php administrador de bases de datos para el videojuego
DelRow, por Omarsaurio 2021, este archivo debe llamarse
"DelRowDB.php" y la informacion se pasa con "?msj=" en la url

Estructura de mensajes:
claveweb|'login'|esname|correoname|password|newpassword
claveweb|'relogin'|datosusuarioR
claveweb|'edit'|datosusuarioE
claveweb|'reedit'
claveweb|'findusr'|esname|correoname|nameactiv
claveweb|'findrand'|zona|txtl|resiente|nameactiv
claveweb|'refind'|datosusuarioP
claveweb|'info'|nameactiv
claveweb|'reinfo'|datosinfo
claveweb|'register'|correo
claveweb|'reregister'
claveweb|'msj'|indmsj
claveweb|'simula'|datosim
claveweb|'war'|nameactiv
claveweb|'rewar'|datoswar
claveweb|'modifi'|name
claveweb|'remodifi'|wait
claveweb|'damenota'
vlaveweb|'tomenota'|nota

indmsj:
0 - error desconocido
1 - error de conexion
2 - error de database
3 - error version inadecuada
4 - error insuficientes parametros
5 - error querry
6 - advert nombre existente
7 - advert no se encontro busqueda
8 - advert aun no es tiempo de editar
9 - (cambio) exito registrando, res=reregister
10 - (local) advert correo o nombre debe ser valido
11 - (local) advert el password es muy corto
12 - exito informacion actualizada
13 - (local) advert actualize los datos de bandera

datosusuarioR:
correo|password|nombre|zona|emocion|genero|piel|pelo|tinte|barba|camisa|pantalon|rol|zodiaco|comport|txtl|texto|registro|modifica|activo

datosusuarioE:
correo|password|nombre|zona|emocion|genero|piel|pelo|tinte|barba|camisa|pantalon|rol|zodiaco|comport|txtl|texto

datosusuarioP:
nombre|zona|emocion|genero|piel|pelo|tinte|barba|camisa|pantalon|rol|zodiaco|texto|registro|modifica|activo

datosinfo:
misma tabla delrow_zonas, columnas separadas por ; y filas separadas por |

datoswar:
misma tabla delrow_war, columnas separadas por ; y filas separadas por |

datosim:
|zona;cazados;asedio;conquista;duracion;disponibles;poblacion;vida;puntaje
eso para una zona, los bloques de zona se separan con |
si es continental llegaran menos datos, pues son solo zonas continentales

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
$clavemd5 = 'habia una vez un vampi con codigo 201038239 perteneciente al claustro 3744, se movilizaba en un RFD473 y su # era H@w$%';
$claveweb = 'juegazo893277_v1';
$estesoft = 'DelRow';
$esactivo = '7'; // dias para considerar a alguien activo

// charla del server a todos por joder, formato:
// es:xxxxxxxxx°en:xxxxxxxxx
// xxxx es texto sin |, ° separador de idioma, soportavarios idiomas
$notaserver = 'es:Aquí se publicará información variada, actualizaciónes, novedades, etc.##La versión para Andorid (App) o para navegador, están en proceso de diseño y construcción...°en:Here will be published various information, updates, news, etc.##The version for Android (App) or for browser, are in the process of design and construction...';

// datos de conexion y servidor
$server = 'localhost';
$username = 'u630689278_omi';
$password = '10382393744IngElectronica';
$database = 'u630689278_games';

// e-mail
$my_mail = 'ojorcio@gmail.com';
$webpage_mail = 'https://gamejolt.com/@PersonajeX/games';
$from_mail = 'omwekiatl_auto@omarsauriogames.ml';
$subject_mail = "DelRow login data";
$message_mail = "Hello, you now can login in DelRow game!!!\r\n\r\n" .
	"Username: %1\r\nPassword: %2\r\n\r\n" .
	"Download the game at:\r\n" . $webpage_mail .
	"\r\n\r\nThanks!!!\r\n\r\nContact me at: " . $my_mail;
$header_mail = "From: " . $from_mail;

function servicio()
{
	global $server, $username, $password, $database, $claveweb, $notaserver;
	// hacer la conexion con el servidor
	$conexion = mysqli_connect($server, $username, $password);
	if (!$conexion)
	{
		echo "$claveweb|msj|1";
		exit;
	}
	if (!mysqli_select_db($conexion, $database))
	{
		mysqli_close($conexion);
		echo "$claveweb|msj|2";
		exit;
	}
	// obtener informacion entrante
	$respuesta = "";
	$msj = explode('|', $_GET['msj']);
	// verificar que coincida la clave de software
	if ($claveweb != $msj[0])
	{
		mysqli_close($conexion);
		echo "$claveweb|msj|3";
		exit;
	}
	$lengt = count($msj);
	if ($lengt >= 2)
	{
		// depurar segun tipo de mensaje
		switch ($msj[1])
		{
			case 'login':
				if ($lengt == 6)
				{
					$respuesta = login($conexion, $msj[2], $msj[3], $msj[4], $msj[5]);
				}
				break;
			case 'edit':
				if ($lengt == 19)
				{
					$respuesta = edit($conexion, $msj);
				}
				break;
			case 'findusr':
				if ($lengt == 5)
				{
					$respuesta = findusr($conexion, $msj[2], $msj[3]);
					esta_activo($conexion, $msj[4]);
				}
				break;
			case 'findrand':
				if ($lengt == 6)
				{
					$respuesta = findrand($conexion, $msj[2], $msj[3], $msj[4]);
					esta_activo($conexion, $msj[5]);
				}
				break;
			case 'info':
				if ($lengt == 3)
				{
					$respuesta = info($conexion);
					esta_activo($conexion, $msj[2]);
				}
				break;
			case 'register':
				if ($lengt == 3)
				{
					$respuesta = register($conexion, $msj[2]);
				}
				break;
			case 'simula':
				if ($lengt == 19 or $lengt == 8)
				{
					$respuesta = simula($conexion, $msj);
				}
				break;
			case 'war':
				if ($lengt == 3)
				{
					$respuesta = war($conexion);
					esta_activo($conexion, $msj[2]);
				}
				break;
			case 'modifi':
				if ($lengt == 3)
				{
					$respuesta = modifi($conexion, $msj[2]);
					esta_activo($conexion, $msj[2]);
				}
				break;
			case 'damenota':
				$respuesta = "$claveweb|tomenota|$notaserver";
				break;
		}
		if ($respuesta == "")
		{
			mysqli_close($conexion);
			echo "$claveweb|msj|4";
			exit;
		}
	}
	else
	{
		mysqli_close($conexion);
		echo "$claveweb|msj|4";
		exit;
	}
	// verificar que de alguna respuesta
	if ($respuesta == "")
	{
		$respuesta = "$claveweb|msj|0";
	}
	mysqli_close($conexion);
	echo $respuesta;
}

// funciones mayores de la llamada

function login($conexion, $esname, $correoname, $password, $newpassword)
{
	global $claveweb, $estesoft;
	if ($esname == '0')
	{
		$query1 = mysqli_query($conexion, "SELECT * FROM delrow_users WHERE correo='$correoname' AND password='$password'");
	}
	else
	{
		$query1 = mysqli_query($conexion, "SELECT * FROM delrow_users WHERE nombre='$correoname' AND password='$password'");
	}
	if ($query1)
	{
		if (mysqli_num_rows($query1) == 1)
		{
			$data = mysqli_fetch_row($query1);
			$res = "$claveweb|relogin";
			for ($i = 0; $i < 20; $i++)
			{
				$res .= '|' . $data[$i];
			}
			$nombre = $data[2];
			if ($newpassword != "")
			{
				$query2 = mysqli_query($conexion, "UPDATE delrow_users SET activo=CURRENT_DATE(), password='$newpassword' WHERE nombre='$nombre' AND password='$password'");
			}
			else
			{
				$query2 = mysqli_query($conexion, "UPDATE delrow_users SET activo=CURRENT_DATE() WHERE nombre='$nombre' AND password='$password'");
			}
			if (!$query2)
			{
				$res = "$claveweb|msj|5";
			}
		}
		else
		{
			if ($esname == '0')
			{
				$query2 = mysqli_query($conexion, "SELECT * FROM registro WHERE correo='$correoname' AND password='$password' AND software='$estesoft'");
			}
			else
			{
				$query2 = mysqli_query($conexion, "SELECT * FROM registro WHERE nombre='$correoname' AND password='$password' AND software='$estesoft'");
			}
			if ($query2)
			{
				if (mysqli_num_rows($query2) == 1)
				{
					$data = mysqli_fetch_row($query2);
					if ($newpassword == "")
					{
						$mypass = $password;
					}
					else
					{
						$mypass = $newpassword;
					}
					$zona = "" .+ random_int(0, 16);
					$emocion = "" .+ random_int(0, 20);
					$genero = "" .+ random_int(0, 1);
					$piel = "" .+ random_int(0, 9);
					$pelo = "" .+ random_int(0, 74);
					$tinte = "" .+ random_int(0, 19);
					$barba = "" .+ random_int(0, 13);
					$camisa = "" .+ random_int(0, 29);
					$pantalon = "" .+ random_int(0, 29);
					$rol = "" .+ random_int(0, 27);
					$zodiaco = "" .+ random_int(0, 11);
					$comport = "" .+ random_int(0, 6);
					if ($genero == '0')
					{
						$barba = '0';
					}
					$query3 = mysqli_query($conexion, "INSERT INTO delrow_users (correo, password, nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, comport, txtl, texto, registro, modifica, activo) VALUES ('$data[0]', '$mypass', '$data[2]', $zona, $emocion, $genero, $piel, $pelo, $tinte, $barba, $camisa, $pantalon, $rol, $zodiaco, $comport, '0', '', '$data[3]', CURRENT_DATE(), CURRENT_DATE())");
					if ($query3)
					{
						$query4 = mysqli_query($conexion, "DELETE FROM registro WHERE correo='$data[0]' AND software='$estesoft'");
						$query5 = mysqli_query($conexion, "SELECT * FROM delrow_users WHERE nombre='$data[2]'");
						if ($query5)
						{
							if (mysqli_num_rows($query5) == 1)
							{
								$dataaa = mysqli_fetch_row($query5);
								$res = "$claveweb|relogin";
								for ($i = 0; $i < 20; $i++)
								{
									$res .= '|' . $dataaa[$i];
								}
							}
							else
							{
								$res = "$claveweb|msj|7";
							}
						}
						else
						{
							$res = "$claveweb|msj|5";
						}
					}
					else
					{
						$res = "$claveweb|msj|5";
					}
				}
				else
				{
					$res = "$claveweb|msj|7";
				}
			}
			else
			{
				$res = "$claveweb|msj|5";
			}
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function edit($conexion, $msj)
{
	global $claveweb;
	$query2 = mysqli_query($conexion, "SELECT editar FROM delrow_users WHERE correo='$msj[2]' AND password='$msj[3]'");
	if ($query2)
	{
		if (mysqli_num_rows($query2) == 1)
		{
			if (mysqli_fetch_row($query2)[0] == '1')
			{
				$existe = nombre_existe($conexion, $msj[4], $msj[2]);
				if ($existe == -1)
				{
					$res = "$claveweb|msj|5";
				}
				elseif ($existe == 1)
				{
					$query1 = mysqli_query($conexion, "UPDATE delrow_users SET zona='$msj[5]', emocion='$msj[6]', genero='$msj[7]', piel='$msj[8]', pelo='$msj[9]', tinte='$msj[10]', barba='$msj[11]', camisa='$msj[12]', pantalon='$msj[13]', rol='$msj[14]', zodiaco='$msj[15]', comport='$msj[16]', txtl='$msj[17]', texto='$msj[18]', modifica=CURRENT_DATE(), activo=CURRENT_DATE(), editar='0' WHERE correo='$msj[2]' AND password='$msj[3]'");
					$res = "$claveweb|msj|6";
				}
				else
				{
					$query1 = mysqli_query($conexion, "UPDATE delrow_users SET nombre='$msj[4]', zona='$msj[5]', emocion='$msj[6]', genero='$msj[7]', piel='$msj[8]', pelo='$msj[9]', tinte='$msj[10]', barba='$msj[11]', camisa='$msj[12]', pantalon='$msj[13]', rol='$msj[14]', zodiaco='$msj[15]', comport='$msj[16]', txtl='$msj[17]', texto='$msj[18]', modifica=CURRENT_DATE(), activo=CURRENT_DATE(), editar='0' WHERE correo='$msj[2]' AND password='$msj[3]'");
					if ($query1)
					{
						$res = "$claveweb|reedit";
					}
					else
					{
						$res = "$claveweb|msj|5";
					}
				}
			}
			else
			{
				$res = "$claveweb|msj|8";
			}
		}
		else
		{
			$res = "$claveweb|msj|7";
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function findusr($conexion, $esname, $correoname)
{
	global $claveweb;
	if ($esname == '0')
	{
		$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE correo='$correoname'");
	}
	else
	{
		$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE nombre='$correoname'");
	}
	if ($query1)
	{
		if (mysqli_num_rows($query1) == 1)
		{
			$data = mysqli_fetch_row($query1);
			$res = "$claveweb|refind";
			for ($i = 0; $i < 16; $i++)
			{
				$res .= '|' . $data[$i];
			}
		}
		else
		{
			$res = "$claveweb|msj|7";
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function findrand($conexion, $zona, $txtl, $resiente)
{
	global $claveweb, $esactivo;
	if ($zona != "")
	{
		if ($txtl == '0')
		{
			if ($resiente == '0')
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE zona=$zona ORDER BY RAND() LIMIT 1");
			}
			else
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE zona=$zona AND activo>=(CURRENT_DATE() - INTERVAL $esactivo day) ORDER BY RAND() LIMIT 1");
			}
		}
		else
		{
			if ($resiente == '0')
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE zona=$zona AND txtl='1' ORDER BY RAND() LIMIT 1");
			}
			else
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE zona=$zona AND txtl='1' AND activo>=(CURRENT_DATE() - INTERVAL $esactivo day) ORDER BY RAND() LIMIT 1");
			}
		}
	}
	else
	{
		if ($txtl == '0')
		{
			if ($resiente == '0')
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users ORDER BY RAND() LIMIT 1");
			}
			else
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE activo>=(CURRENT_DATE() - INTERVAL $esactivo day) ORDER BY RAND() LIMIT 1");
			}
		}
		else
		{
			if ($resiente == '0')
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE txtl='1' ORDER BY RAND() LIMIT 1");
			}
			else
			{
				$query1 = mysqli_query($conexion, "SELECT nombre, zona, emocion, genero, piel, pelo, tinte, barba, camisa, pantalon, rol, zodiaco, texto, registro, modifica, activo FROM delrow_users WHERE txtl='1' AND activo>=(CURRENT_DATE() - INTERVAL $esactivo day) ORDER BY RAND() LIMIT 1");
			}
		}
	}
	if ($query1)
	{
		if (mysqli_num_rows($query1) == 1)
		{
			$data = mysqli_fetch_row($query1);
			$res = "$claveweb|refind";
			for ($i = 0; $i < 16; $i++)
			{
				$res .= '|' . $data[$i];
			}
		}
		else
		{
			$res = "$claveweb|msj|7";
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function info($conexion)
{
    global $claveweb;
	$query1 = mysqli_query($conexion, "SELECT * FROM delrow_zonas WHERE 1 ORDER BY zona");
	if ($query1)
	{
		if (mysqli_num_rows($query1) == 17)
		{
			$res = "$claveweb|reinfo";
			for ($i = 0; $i < 17; $i++)
			{
				$row = mysqli_fetch_row($query1);
				$data = "";
				for ($d = 0; $d < 8; $d++)
				{
					if ($d == 0)
					{
						$data .= "|" .+ $row[$d];
					}
					elseif ($d >= 4 and $d <= 6)
					{
						$data .= ";" . $row[$d];
					}
					else
					{
						$data .= ";" .+ $row[$d];
					}
				}
				$res .= $data;
			}
		}
		else
		{
			$res = "$claveweb|msj|5";
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function register($conexion, $correo)
{
	global $claveweb, $estesoft, $subject_mail, $message_mail, $header_mail;
	$disponible = correo_existe($conexion, $correo);
	if ($disponible == -1) // error de busqueda
	{
		$res = "$claveweb|msj|5";
	}
	elseif ($disponible != 0) // existe en registro o usuarios
	{
		$newpass = 'p' .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9);
		$newpassmd5 = pass_md5($newpass);
		if ($disponible == 1) // existe en registro, cambiar nombre
		{
			$nombre = crea_nombre($conexion);
			if ($nombre == "")
			{
				$res = "$claveweb|msj|5";
			}
			else
			{
				$query1 = mysqli_query($conexion, "UPDATE registro SET password='$newpassmd5', nombre='$nombre', registro=CURRENT_DATE() WHERE correo='$correo' AND software='$estesoft'");
				if ($query1)
				{
					$res = "$claveweb|reregister";
					$mensaje = str_replace('%1', $nombre, $message_mail);
					$mensaje = str_replace('%2', $newpass, $mensaje);
					mail($correo, $subject_mail, $mensaje, $header_mail);
				}
				else
				{
					$res = "$claveweb|msj|5";
				}
			}
		}
		else // existe en usuarios, solo cambiar contrasenna
		{
			$query1 = mysqli_query($conexion, "UPDATE delrow_users SET password='$newpassmd5' WHERE correo='$correo'");
			if ($query1)
			{
				$res = "$claveweb|reregister";
				$mensaje = str_replace('%1', $correo, $message_mail);
				$mensaje = str_replace('%2', $newpass, $mensaje);
				mail($correo, $subject_mail, $mensaje, $header_mail);
			}
			else
			{
				$res = "$claveweb|msj|5";
			}
		}
	}
	else // no existe, crearlo en registro
	{
		$nombre = crea_nombre($conexion);
		if ($nombre == "")
		{
			$res = "$claveweb|msj|5";
		}
		else
		{
			$newpass = 'p' .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9);
			$newpassmd5 = pass_md5($newpass);
			$query1 = mysqli_query($conexion, "INSERT INTO registro (correo, password, nombre, registro, software) VALUES ('$correo', '$newpassmd5', '$nombre', CURRENT_DATE(), '$estesoft')");
			if ($query1)
			{
				$res = "$claveweb|reregister";
				$mensaje = str_replace('%1', $nombre, $message_mail);
				$mensaje = str_replace('%2', $newpass, $mensaje);
				mail($correo, $subject_mail, $mensaje, $header_mail);
			}
			else
			{
				$res = "$claveweb|msj|5";
			}
		}
	}
	return $res;
}

function simula($conexion, $msj)
{
	global $claveweb;
	$query2 = mysqli_query($conexion, "SELECT * FROM delrow_war");
	if ($query2)
	{
		while ($f = mysqli_fetch_assoc($query2))
		{
			for ($i = 2; $i < count($msj); $i++)
			{
				$d = explode(';', $msj[$i]);
				if ($f['zona'] == $d[0])
				{
					$p = $f['semanal'];
					$f['semanal'] = $f['semanal'] + 1;
					if ($p == 0)
					{
						// agregar primer dato semanal
						$f['puntaje'] = $d[8];
						$f['cazados'] = $d[1];
						$f['asedio'] = $d[2];
						$f['conquista'] = $d[3];
						$f['duracion'] = $d[4];
						$f['disponibles'] = $d[5];
						$f['poblacion'] = $d[6];
						$f['vida'] = $d[7];
						// agregar el dato oficial
						$f['ofi_puntaje'] = $d[8];
						$f['ofi_cazados'] = $d[1];
						$f['ofi_asedio'] = $d[2];
						$f['ofi_conquista'] = $d[3];
						$f['ofi_duracion'] = $d[4];
						$f['ofi_disponibles'] = $d[5];
						$f['ofi_poblacion'] = $d[6];
						$f['ofi_vida'] = $d[7];
					}
					else
					{
						// hacer el promedio semanal
						$a = $f['semanal'];
						$f['puntaje'] = ($f['puntaje'] * $p + $d[8]) / $a;
						$f['cazados'] = ($f['cazados'] * $p + $d[1]) / $a;
						$f['asedio'] = ($f['asedio'] * $p + $d[2]) / $a;
						$f['conquista'] = ($f['conquista'] * $p + $d[3]) / $a;
						$f['duracion'] = ($f['duracion'] * $p + $d[4]) / $a;
						$f['disponibles'] = ($f['disponibles'] * $p + $d[5]) / $a;
						$f['poblacion'] = ($f['poblacion'] * $p + $d[6]) / $a;
						$f['vida'] = ($f['vida'] * $p + $d[7]) / $a;
					}
					// poner el maximo
					$f['acumulado'] = $f['acumulado'] + 1;
					$f['max_puntaje'] = max($f['max_puntaje'], $d[8]);
					$f['max_cazados'] = max($f['max_cazados'], $d[1]);
					$f['max_asedio'] = max($f['max_asedio'], $d[2]);
					$f['max_disponibles'] = max($f['max_disponibles'], $d[5]);
					$f['max_poblacion'] = max($f['max_poblacion'], $d[6]);
					// acualizar la DB
					$query1 = mysqli_query($conexion, "UPDATE delrow_war SET puntaje='$f[puntaje]', cazados='$f[cazados]', asedio='$f[asedio]', conquista='$f[conquista]', duracion='$f[duracion]', disponibles='$f[disponibles]', poblacion='$f[poblacion]', vida='$f[vida]', semanal='$f[semanal]', acumulado='$f[acumulado]', ofi_puntaje='$f[ofi_puntaje]', ofi_cazados='$f[ofi_cazados]', ofi_asedio='$f[ofi_asedio]', ofi_conquista='$f[ofi_conquista]', ofi_duracion='$f[ofi_duracion]', ofi_disponibles='$f[ofi_disponibles]', ofi_poblacion='$f[ofi_poblacion]', ofi_vida='$f[ofi_vida]', max_puntaje='$f[max_puntaje]', max_cazados='$f[max_cazados]', max_asedio='$f[max_asedio]', max_disponibles='$f[max_disponibles]', max_poblacion='$f[max_poblacion]', modificacion=CURRENT_TIMESTAMP WHERE zona='$f[zona]'");
					break;
				}
			}
		}
		$res = war($conexion);
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function war($conexion)
{
	global $claveweb;
	$query1 = mysqli_query($conexion, "SELECT * FROM delrow_war WHERE 1 ORDER BY zona");
	if ($query1)
	{
		if (mysqli_num_rows($query1) == 23)
		{
			$res = "$claveweb|rewar";
			for ($i = 0; $i < 23; $i++)
			{
				$row = mysqli_fetch_row($query1);
				$data = "";
				for ($d = 0; $d < 24; $d++)
				{
					if ($d == 0)
					{
						$data .= "|" .+ $row[$d];
					}
					else
					{
						$data .= ";" .+ $row[$d];
					}
				}
				$res .= $data;
			}
		}
		else
		{
			$res = "$claveweb|msj|5";
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

function modifi($conexion, $name)
{
	global $claveweb;
	$query2 = mysqli_query($conexion, "SELECT editar FROM delrow_users WHERE nombre='$name'");
	if ($query2)
	{
		if (mysqli_num_rows($query2) == 1)
		{
			if (mysqli_fetch_row($query2)[0] == '1')
			{
				$res = "$claveweb|remodifi|0";
			}
			else
			{
				$t = time();
				$s = 3600 - (date("i", $t) * 60 + date("s", $t));
				$res = "$claveweb|remodifi|" .+ $s;
			}
		}
		else
		{
			$res = "$claveweb|msj|7";
		}
	}
	else
	{
		$res = "$claveweb|msj|5";
	}
	return $res;
}

// funciones secundarias o auxiliares

function pass_md5($pass)
{
	global $clavemd5;
	
	$ccc = $pass;
	while (strlen($ccc) < 10)
	{
		$ccc .= '0';
	}
	$mmm = $clavemd5;
	for ($c = 1; $c <= 10; $c++)
	{
		switch ($c)
		{
			case 1: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 72 - 1, 0); break;
			case 2: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 12 - 1, 0); break;
			case 3: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 33 - 1, 0); break;
			case 4: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 40 - 1, 0); break;
			case 5: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 69 - 1, 0); break;
			case 6: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 9 - 1, 0); break;
			case 7: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 100 - 1, 0); break;
			case 8: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 64 - 1, 0); break;
			case 9: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 28 - 1, 0); break;
			case 10: $mmm = substr_replace($mmm, substr($ccc, $c - 1, 1), 1 - 1, 0); break;
		}
	}
	return md5($pass . $mmm . $clavemd5);
}

function esta_activo($conexion, $nameactiv)
{
	if ($nameactiv != "")
	{
		mysqli_query($conexion, "UPDATE delrow_users SET activo=CURRENT_DATE() WHERE nombre='$nameactiv'");
	}
}

function crea_nombre($conexion)
{
	do
	{
		if (random_int(0, 99) == 0)
		{
			$nombre = 'u' .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) + random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9);
		}
		else
		{
			$nombre = 'u' .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9) .+ random_int(0, 9);
		}
		$existe = nombre_existe($conexion, $nombre, '');
	}
	while ($existe == 1);
	if ($existe == -1)
	{
		$nombre = "";
	}
	return $nombre;
}

function nombre_existe($conexion, $nombre, $correo)
{
	global $estesoft;
	$query1 = mysqli_query($conexion, "SELECT * FROM registro WHERE nombre='$nombre' AND software='$estesoft' AND correo!='$correo'");
	if ($query1)
	{
		if (!mysqli_fetch_row($query1))
		{
			$query2 = mysqli_query($conexion, "SELECT * FROM delrow_users WHERE nombre='$nombre' AND correo!='$correo'");
			if ($query2)
			{
				if (mysqli_fetch_row($query2))
				{
					$res = 1; // existe el nombre
				}
				else
				{
					$res = 0; // no existe el nombre
				}
			}
			else
			{
				$res = -1; // error en busqueda
			}
		}
		else
		{
			$res = 1; // existe el nombre
		}
	}
	else
	{
		$res = -1; // error en busqueda
	}
	return $res;
}

function correo_existe($conexion, $correo)
{
	global $estesoft;
	$query1 = mysqli_query($conexion, "SELECT * FROM registro WHERE correo='$correo' AND software='$estesoft'");
	if ($query1)
	{
		if (!mysqli_fetch_row($query1))
		{
			$query2 = mysqli_query($conexion, "SELECT * FROM delrow_users WHERE correo='$correo'");
			if ($query2)
			{
				if (!mysqli_fetch_row($query2))
				{
					$res = 0; // no existe
				}
				else
				{
					$res = 2; // existe en delrow_users
				}
			}
			else
			{
				$res = -1; // error en busqueda
			}
		}
		else
		{
			$res = 1; // existe en registro
		}
	}
	else
	{
		$res = -1; // error en busqueda
	}
	return $res;
}

// realizar la funcion main
servicio();
?>

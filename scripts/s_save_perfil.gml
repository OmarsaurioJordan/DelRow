// guarda el perfil en ini
// arg0: str modificador de nombre

with o_app {
ini_open("configuracion" + argument0 + ".ini");
ini_write_string("login", "correo", usuario_correo);
ini_write_string("login", "password", usuario_pasword);
ini_write_string("login", "nombre", usuario_nombre);
ini_write_string("login", "zona", string(usuario_zona));
ini_write_string("login", "emocion", string(usuario_emocion));
ini_write_string("login", "genero", string(usuario_genero));
ini_write_string("login", "piel", string(usuario_piel));
ini_write_string("login", "pelo", string(usuario_pelo));
ini_write_string("login", "tinte", string(usuario_tinte));
ini_write_string("login", "barba", string(usuario_barba));
ini_write_string("login", "camisa", string(usuario_camisa));
ini_write_string("login", "pantalon", string(usuario_pantalon));
ini_write_string("login", "rol", string(usuario_rol));
ini_write_string("login", "zodiaco", string(usuario_zodiaco));
ini_write_string("login", "comport", string(usuario_comport));
ini_write_string("login", "texto", usuario_texto);
ini_write_string("login", "registro", usuario_registro);
ini_write_string("login", "modifica", usuario_modifica);
ini_write_string("login", "online", usuario_online);
ini_close();
}


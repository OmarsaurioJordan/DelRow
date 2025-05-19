// abre el perfil
// arg0: str modificador de nombre

with o_app {
ini_open("configuracion" + argument0 + ".ini");
usuario_correo = ini_read_string("login", "correo", "");
usuario_pasword = ini_read_string("login", "password", "");
usuario_nombre = ini_read_string("login", "nombre", "");
usuario_zona = real(ini_read_string("login", "zona", string(irandom(m_map_total - 1))));
usuario_emocion = real(ini_read_string("login", "emocion", string(irandom(sprite_get_number(d_emocion) - 1))));
usuario_genero = real(ini_read_string("login", "genero", string(irandom(1))));
usuario_piel = real(ini_read_string("login", "piel", string(irandom(m_dat_pieles - 1))));
usuario_pelo = real(ini_read_string("login", "pelo", string(irandom(sprite_get_number(d_pelo) - 1))));
usuario_tinte = real(ini_read_string("login", "tinte", string(irandom(m_dat_tintes - 1))));
usuario_barba = real(ini_read_string("login", "barba", string(irandom(sprite_get_number(d_barba) - 1))));
usuario_camisa = real(ini_read_string("login", "camisa", string(irandom(m_dat_camisas - 1))));
usuario_pantalon = real(ini_read_string("login", "pantalon", string(irandom(m_dat_pantalones - 1))));
usuario_rol = real(ini_read_string("login", "rol", string(irandom(sprite_get_number(d_edificio) - 1))));
usuario_zodiaco = real(ini_read_string("login", "zodiaco", string(irandom(11))));
usuario_comport = real(ini_read_string("login", "comport", string(irandom(m_comport_total - 1))));
usuario_texto = ini_read_string("login", "texto", "");
var hoy = date_current_datetime();
var ttt = string(date_get_year(hoy)) + "-" + string(date_get_month(hoy)) + "-" + string(date_get_day(hoy));
usuario_registro = ini_read_string("login", "registro", ttt);
usuario_modifica = ini_read_string("login", "modifica", ttt);
usuario_online = ini_read_string("login", "online", ttt);
s_sinbarba(true);
s_actu_txt();
ini_close();
}


// llama http para pedir datos estadisticos cada t minimo
// arg0: true zonas, false war

if argument0 {
    ini_open("configuracion.ini");
    var s = real(ini_read_string("timeserver", "actu_zona", "0"));
    ini_close();
    var c = round(date_second_span(m_univtime, date_current_datetime()));
    if c > s {
        with o_app {
            var na = "";
            if usuario_pasword != "" {
                na = usuario_nombre;
            }
            http_get(m_servidor + m_clave_web + "|info|" + na);
        }
    }
}
else {
    ini_open("configuracion.ini");
    var s = real(ini_read_string("timeserver", "actu_war", "0"));
    ini_close();
    var c = round(date_second_span(m_univtime, date_current_datetime()));
    if c > s {
        with o_app {
            var na = "";
            if usuario_pasword != "" {
                na = usuario_nombre;
            }
            http_get(m_servidor + m_clave_web + "|war|" + na);
        }
    }
}


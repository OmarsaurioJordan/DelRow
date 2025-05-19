// llama http para pedir nota especial cada dia

ini_open("configuracion.ini");
var d = real(ini_read_string("timeserver", "actu_nota", "0"));
ini_close();
var c = round(date_day_span(m_univtime, date_current_datetime()));
if c > d {
    http_get(m_servidor + m_clave_web + "|damenota");
}


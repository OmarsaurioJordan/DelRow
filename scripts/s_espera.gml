// arg0: true si mostrar notificacion de edicion
// ret: true si ya esta listo para pedir o enviar datos

ini_open("configuracion.ini");
var s = real(ini_read_string("timeserver", "espera", "0"));
ini_close();
var c = round(date_second_span(m_univtime, date_current_datetime()));
var res = c > s;
if !res and argument0 {
    s_notificacion(408);
    o_app.notificacion += "#(" + s_minutes(c - s) + ")";
}
return res;


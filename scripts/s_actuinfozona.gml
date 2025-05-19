// ret: true si ultima actualizacion ha sido reciente

var res = false;
ini_open("configuracion.ini");
var s = real(ini_read_string("timeserver", "actu_zona", "0"));
ini_close();
var c = round(date_second_span(m_univtime, date_current_datetime()));
return s > c;


///s_set_ofihttp();

ini_open("configuracion.ini");
http_ofihttp = noone;
if date_get_week(date_current_datetime()) != ini_read_real("web_oficial", "week", 0) {
    http_ofihttp = http_get_file("https://linktr.ee/omwekiatl", "data_ofihttp.txt");
}
globalvar official_web, m_servidor;
official_web = ini_read_string("web_oficial", "url", "http://omwekiatl.xyz");
m_servidor = official_web + "/DelRowDB.php?msj=";
ini_close();


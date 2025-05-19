// genera archivo temporal para persistencia entre rooms

if file_exists("tmp.ini") {
    file_delete("tmp.ini");
}
ini_open("tmp.ini");
with o_info {
    var hak = "";
    ini_write_string("configuracion", "secreto", string(secreto));
    hak += string(secreto);
    ini_write_string("configuracion", "continental", string(continental));
    hak += string(continental);
    ini_write_string("configuracion", "oficial", string(oficial));
    hak += string(oficial);
    for (var i = 0; i < m_map_total; i++) {
        ini_write_string("general", "poblacion" + string(i), string(info_gen[i, m_info_poblacion]));
        hak += string(info_gen[i, m_info_poblacion]);
        ini_write_string("general", "activos" + string(i), string(info_gen[i, m_info_activos]));
        hak += string(info_gen[i, m_info_activos]);
        ini_write_string("general", "feminas" + string(i), string(info_gen[i, m_info_feminas]));
        hak += string(info_gen[i, m_info_feminas]);
        for (var k = 0; k < m_rol_total * m_comport_total; k++) {
            ini_write_string("rolcom", string(i) + "_" + string(k), string(info_rolcom[i, k]));
            hak += string(info_rolcom[i, k]);
        }
    }
    var t = date_current_datetime();
    hak += string(date_get_year(t));
    hak += string(date_get_month(t));
    hak += string(date_get_day(t));
    hak += string(date_get_hour(t));
    ini_write_string("configuracion", "antihack", s_md5(hak));
}
ini_close();


// carga estadisticas iniciales

ini_open("configuracion.ini");
with o_app {
    ini_write_string("gui", "dato", string(info_dato));
    ini_write_string("gui", "zona", string(info_zona));
    for (var i = 0; i < m_map_total + m_mmap_total; i++) {
        ini_write_string("est_gen", string(i) + "_" + string(m_info_poblacion),
            string(info_general[i, m_info_poblacion]));
        ini_write_string("est_gen", string(i) + "_" + string(m_info_activos),
            string(info_general[i, m_info_activos]));
        ini_write_string("est_gen", string(i) + "_" + string(m_info_feminas),
            string(info_general[i, m_info_feminas]));
        ini_write_string("est_gen", string(i) + "_" + string(m_info_record),
            string(info_general[i, m_info_record]));
        for (var k = 0; k < m_rol_total; k++) {
            ini_write_string("est_rol", string(i) + "_" + string(k),
                string(info_rol[i, k]));
        }
        for (var k = 0; k < 7; k++) {
            ini_write_string("est_emocion", string(i) + "_" + string(k),
                string(info_emocion[i, k]));
        }
        for (var k = 0; k < 12; k++) {
            ini_write_string("est_zodiaco", string(i) + "_" + string(k),
                string(info_zodiaco[i, k]));
        }
    }
}
ini_close();

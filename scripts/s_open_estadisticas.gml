// carga estadisticas iniciales

ini_open("configuracion.ini");
with o_app {
    info_dato = real(ini_read_string("gui", "dato", "0"));
    info_zona = real(ini_read_string("gui", "zona", "0"));
    for (var i = 0; i < m_map_total + m_mmap_total; i++) {
        info_general[i, m_info_poblacion] = real(ini_read_string("est_gen",
            string(i) + "_" + string(m_info_poblacion), "0"));
        info_general[i, m_info_activos] = real(ini_read_string("est_gen",
            string(i) + "_" + string(m_info_activos), "0"));
        info_general[i, m_info_feminas] = real(ini_read_string("est_gen",
            string(i) + "_" + string(m_info_feminas), "0"));
        info_general[i, m_info_record] = real(ini_read_string("est_gen",
            string(i) + "_" + string(m_info_record), "0"));
        for (var k = 0; k < m_rol_total * m_comport_total; k++) {
            info_rolcomport[i, k] = 0;
        }
        for (var k = 0; k < m_rol_total; k++) {
            info_rol[i, k] = real(ini_read_string("est_rol",
                string(i) + "_" + string(k), "0"));
        }
        for (var k = 0; k < 7; k++) {
            info_emocion[i, k] = real(ini_read_string("est_emocion",
                string(i) + "_" + string(k), "0"));
        }
        for (var k = 0; k < 12; k++) {
            info_zodiaco[i, k] = real(ini_read_string("est_zodiaco",
                string(i) + "_" + string(k), "0"));
        }
    }
}
ini_close();

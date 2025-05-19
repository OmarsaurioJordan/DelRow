// carga estadisticas iniciales

ini_open("configuracion.ini");
with o_app {
    info_zonaw = real(ini_read_string("gui", "zonaw", "0"));
    for (var i = 0; i < m_map_total + m_conti_total; i++) {
        for (var r = 0; r < m_res_total; r++) {
            info_result[i, r] = real(ini_read_string("est_res",
                string(i) + "_" + string(r), "0"));
            info_trofeo[i, r] = real(ini_read_string("est_trof",
                string(i) + "_" + string(r), "0"));
        }
    }
}
ini_close();


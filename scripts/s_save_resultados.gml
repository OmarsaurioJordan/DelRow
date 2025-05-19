// carga estadisticas iniciales

ini_open("configuracion.ini");
with o_app {
    ini_write_string("gui", "zonaw", string(info_zonaw));
    for (var i = 0; i < m_map_total + m_conti_total; i++) {
        for (var r = 0; r < m_res_total; r++) {
            ini_write_string("est_res", string(i) + "_" + string(r),
                string(info_result[i, r]));
            ini_write_string("est_trof", string(i) + "_" + string(r),
                string(info_trofeo[i, r]));
        }
    }
}
ini_close();


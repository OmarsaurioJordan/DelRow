// pasa informacion de zonas, de app a info general para simulacion

var m = o_app.id;
with o_info {
    for (var i = 0; i < m_map_total; i++) {
        info_gen[i, m_info_poblacion] = m.info_general[i, m_info_poblacion];
        info_gen[i, m_info_activos] = m.info_general[i, m_info_activos];
        info_gen[i, m_info_feminas] = m.info_general[i, m_info_feminas];
        for (var k = 0; k < m_rol_total * m_comport_total; k++) {
            info_rolcom[i, k] = m.info_rolcomport[i, k];
        }
    }
}


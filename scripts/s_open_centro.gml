// arg0: id del centro que llama para abrir ini

with argument0 {
    unit_total = o_info.info_gen[zona, m_info_poblacion];
    unit_activ = o_info.info_gen[zona, m_info_activos];
    unit_femin = o_info.info_gen[zona, m_info_feminas];
    unit_evoke = 0;
    unit_vivas = 0;
    if unit_total == 0 {
        resist_tot = 0;
    }
    else {
        resist_tot = unit_total + m_sim_poblacion;
    }
    resist_act = resist_tot;
    var m = 0;
    for (var i = 0; i < m_rol_total; i++) {
        for (var k = 0; k < m_comport_total; k++) {
            unit_info[i, k] = o_info.info_rolcom[zona, m];
            m++;
        }
    }
    s_rolporcent(id);
}


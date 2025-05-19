// datos al azar inicializadores

with o_info {
    var list = ds_list_create();
    var tot, act;
    for (var i = 0; i < m_map_total; i++) {
        info_gen[i, m_info_poblacion] = irandom_range(m_sim_demomin, m_sim_demomax);
        info_gen[i, m_info_activos] = floor(info_gen[i, m_info_poblacion] * random(1));
        info_gen[i, m_info_feminas] = random(1);
        tot = info_gen[i, m_info_poblacion];
        for (var k = 0; k < m_rol_total * m_comport_total; k++) {
            act = 1 / ((m_rol_total * m_comport_total) - k);
            act = floor(tot * random(act));
            ds_list_add(list, act);
            tot -= act;
        }
        act = irandom(m_rol_total * m_comport_total - 1);
        ds_list_replace(list, act, ds_list_find_value(list, act) + tot);
        // mezclar el vector
        ds_list_shuffle(list);
        for (var k = 0; k < m_rol_total * m_comport_total; k++) {
            info_rolcom[i, k] = ds_list_find_value(list, 0);
            ds_list_delete(list, 0);
        }
    }
    ds_list_destroy(list);
}


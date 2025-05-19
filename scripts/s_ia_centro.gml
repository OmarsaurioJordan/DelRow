gml_pragma("forceinline");
// arg0: id de centro que llama a hacer su step, crear unidades

with argument0 {
    
    // reloj para crear unidades
    if resist_act != 0 and unit_evoke < unit_total and unit_vivas < m_sim_poblacion {
        var rep = 0;
        if reloj_poblacion == -1 { // crear muchos al inicio
            reloj_poblacion = irandom(m_sim_relojpobla);
            rep = min(m_sim_poblacion, unit_total - unit_evoke, m_sim_poblacion - unit_vivas);
            // si es guerra oficial, hacer que almenos halla varios al inicio
            if o_info.oficial {
                var maxi = 0;
                for (var i = 0; i < m_map_total; i++) {
                    maxi = max(maxi, o_info.info_gen[i, m_info_poblacion]);
                }
                if o_mundo.unit_totalmundo < m_sim_minimofici {
                    var prop = m_sim_milicias / maxi; // numerador es cantidad de unidades extra max
                    repeat min(ceil(unit_total * prop), m_sim_poblacion - rep) {
                        s_crea_unidad(x + random_range(-1, 1), y + random_range(-1, 1),
                            m_rol_vivir, m_comport_azar, 0.5, zona, false, -1);
                    }
                }
            }
        }
        else {
            reloj_poblacion--;
            if reloj_poblacion <= 0 { // crear de a pocos
                reloj_poblacion = m_sim_relojpobla + irandom(5);
                rep = min(m_sim_milicias, unit_total - unit_evoke, m_sim_poblacion - unit_vivas);
            }
        }
        rep = max(0, rep);
        // crear confirmado
        if rep != 0 {
            var rolporc = ds_priority_create();
            var rolind = ds_priority_create();
            var r, c, rolist, rls;
            // ciclo de creacion multiple
            repeat rep {
                r = -1;
                c = -1;
                // crear estructura de prioridad segun porcentaje de roles viables
                ds_priority_clear(rolporc);
                ds_priority_clear(rolind);
                for (var i = 0; i < m_rol_total; i++) {
                    if rol_porcent[i] != 0 {
                        ds_priority_add(rolporc, rol_porcent[i], rol_porcent[i]);
                        ds_priority_add(rolind, i, rol_porcent[i]);
                    }
                }
                // convertir las estructuras de prioridad en matrix
                rolist = noone;
                rls = 0;
                while !ds_priority_empty(rolporc) {
                    rolist[rls, 0] = ds_priority_delete_max(rolind);
                    rolist[rls, 1] = ds_priority_delete_max(rolporc);
                    rls++;
                }
                // no se ha detectado un porcentaje, pero debe haber alguien
                if rls == 0 {
                    // buscar por fuerza bruta en la estructura de datos
                    var ok = false;
                    for (var i = 0; i < m_rol_total; i++) {
                        for (var k = 0; k < m_comport_total; k++) {
                            if unit_info[i, k] != 0 {
                                r = i;
                                c = k;
                                ok = true;
                                break;
                            }
                        }
                        if ok {
                            break;
                        }
                    }
                }
                // se ha detectado almenos un porcentaje, buscar al azar
                else {
                    var zzz = random(1);
                    for (var i = 0; i < rls; i++) {
                        if zzz < rolist[i, 1] {
                            r = rolist[i, 0];
                            // escoger un comportamiento al azar, sin prioridad
                            repeat m_comport_total * 3 {
                                zzz = irandom(m_comport_total - 1);
                                if unit_info[r, zzz] != 0 {
                                    c = zzz;
                                    break;
                                }
                            }
                            // forzar a buscar un comportamiento
                            if c == -1 {
                                for (var k = 0; k < m_comport_total; k++) {
                                    if unit_info[r, k] != 0 {
                                        c = k;
                                        break;
                                    }
                                }
                            }
                            break;
                        }
                    }
                }
                // crear a alguien como tal
                if r != -1 and c != -1 {
                    s_crea_unidad(x + random_range(-1, 1), y + random_range(-1, 1),
                        r, c, unit_femin, zona, unit_activ != 0, 1);
                }
            }
            // limpiar memoria
            ds_priority_destroy(rolporc);
            ds_priority_destroy(rolind);
        }
    }
    
    // otras funciones de la ia
    s_kmedias(id);
    s_asedio(id);
}


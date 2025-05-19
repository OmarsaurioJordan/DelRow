gml_pragma("forceinline");
// arg0: id de centro que realiza el k-medias

with argument0 {
    // reloj para ejecutar algoritmo k-medias de clusters de grupos
    reloj_grupo--;
    if reloj_grupo <= 0 {
        reloj_grupo = m_sim_relojkmedias + irandom(5);
        // ciclo k-medias
        if kmeans_ini {
            kmeans_ini = false;
            
            // calcular primer ciclo de k-medias: asociar
            var mind, d, g, xx, cn;
            if o_info.continental {
                with o_unidad {
                    mind = 999999999;
                    cn = s_ind_conti(conti, true);
                    for (var c = 0; c < centroconti[cn]; c++) {
                        g = centroide[cn, c];
                        xx = abs(x - g.x);
                        if xx > widthmed {
                            d = point_distance(0, y, room_width - xx, g.y);
                        }
                        else {
                            d = point_distance(x, y, g.x, g.y);
                        }
                        if d < mind {
                            mind = d;
                            grupo = g;
                        }
                    }
                }
            }
            else {
                with o_unidad {
                    mind = 999999999;
                    for (var c = 0; c < m_sim_groupszona; c++) {
                        g = centroide[zona, c];
                        xx = abs(x - g.x);
                        if xx > widthmed {
                            d = point_distance(0, y, room_width - xx, g.y);
                        }
                        else {
                            d = point_distance(x, y, g.x, g.y);
                        }
                        if d < mind {
                            mind = d;
                            grupo = g;
                        }
                    }
                }
            }
        }
        else {
            kmeans_ini = true;
            
            // calcular segundo ciclo de k-medias: mover
            var kk;
            with o_unidad {
                if grupo != noone {
                    kk = x - grupo.x;
                    if abs(kk) > widthmed {
                        if kk > 0 {
                            grupo.acum_x += (x - room_width) / m_sim_celda;
                        }
                        else {
                            grupo.acum_x += (x + room_width) / m_sim_celda;
                        }
                    }
                    else {
                        grupo.acum_x += x / m_sim_celda;
                    }
                    grupo.acum_y += y / m_sim_celda;
                    grupo.acum_p++;
                }
            }
            var xx, yy, dd, mind, g, yo, fg, fgg;
            with o_grupo {
                if acum_p != 0 {
                    xx = (acum_x / acum_p) * m_sim_celda;
                    yy = (acum_y / acum_p) * m_sim_celda;
                    dd = point_direction(x, y, xx, yy);
                    x += lengthdir_x(m_sim_velkmedias * 0.75, dd);
                    y += lengthdir_y(m_sim_velkmedias * 0.75, dd);
                }
                // acercarse a zona
                mind = 999999999;
                yo = id;
                g = noone;
                with o_centro {
                    if resist_act != 0 and s_es_enemigo(yo, id) {
                        kk = abs(x - yo.x);
                        if kk > widthmed {
                            dd = point_distance(0, y, room_width - kk, yo.y);
                            fg = -1;
                        }
                        else {
                            dd = point_distance(x, y, yo.x, yo.y);
                            fg = 1;
                        }
                        if dd < mind {
                            mind = dd;
                            g = id;
                            fgg = fg;
                        }
                    }
                }
                if g != noone {
                    dd = point_direction(x, y, g.x, g.y);
                    x += fgg * lengthdir_x(m_sim_velkmedias, dd);
                    y += lengthdir_y(m_sim_velkmedias, dd);
                }
                // acercarse a otro grupo
                else if acum_t != 0 {
                    mind = 999999999;
                    g = noone;
                    with o_grupo {
                        if acum_t != 0 and id != yo and s_es_enemigo(yo, id) {
                            kk = abs(x - yo.x);
                            if kk > widthmed {
                                dd = point_distance(0, y, room_width - kk, yo.y);
                                fg = -1;
                            }
                            else {
                                dd = point_distance(x, y, yo.x, yo.y);
                                fg = 1;
                            }
                            if dd < mind {
                                mind = dd;
                                g = id;
                                fgg = fg;
                            }
                        }
                    }
                    if g != noone {
                        dd = point_direction(x, y, g.x, g.y);
                        x += fgg * lengthdir_x(m_sim_velkmedias, dd);
                        y += lengthdir_y(m_sim_velkmedias, dd);
                    }
                }
                // girar en el mundo x
                if x < 0 {
                    x = room_width;
                }
                else if x > room_width {
                    x = 0;
                }
                y = clamp(y, 0, room_height);
                acum_t = acum_p;
            }
            with o_grupo {
                // limpiar variables
                acum_x = 0;
                acum_y = 0;
                acum_p = 0;
            }
        }
    }
}


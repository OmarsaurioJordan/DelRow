gml_pragma("forceinline");
// este script va en main loop de centro, con temporizador
// arg0: id centro que procesa su asedio

if argument0.resist_act != 0 {
    with argument0 {
        hostigue *= m_sim_nohostigue;
        if reloj_hit > 0 {
            reloj_hit--;
            exit;
        }
        else {
            reloj_hit = m_sim_hitreload + irandom(5);
        }
    }
    var mejora = false;
    var xx = argument0.x;
    var yy = argument0.y;
    var hit = 0;
    var hitzona, mic;
    for (var i = 0; i < m_map_total; i++) {
        hitzona[i] = 0;
    }
    with o_unidad {
        if point_distance(x, y, xx, yy) < m_sim_vision {
            if s_es_enemigo(argument0, id) {
                hit++;
                hitzona[zona]++;
                switch rol {
                    case m_rol_extraccion:
                        if random(1) < m_sim_repara {
                            // recuperar puntos de zona propia
                            var miz = s_micentro(zona);
                            if miz.resist_act != 0 and miz.resist_act < miz.resist_tot {
                                miz.resist_act = min(miz.resist_tot, miz.resist_act + 1);
                                mejora = true;
                                s_recopila_auto(zona, 0, 0, 1);
                            }
                            else {
                                hit++;
                                hitzona[zona]++;
                            }
                        }
                        else {
                            hit++;
                            hitzona[zona]++;
                        }
                        break;
                    case m_rol_mensajeria:
                        hit--;
                        hitzona[zona]--;
                        if fertil and argument0.unit_evoke < argument0.unit_total {
                            mic = s_micentro(zona);
                            if mic.unit_evoke > 0 {
                                argument0.unit_evoke++;
                                var r, c;
                                while true {
                                    r = irandom(m_rol_total - 1);
                                    c = irandom(m_comport_total - 1);
                                    if argument0.unit_info[r, c] > 0 {
                                        argument0.unit_info[r, c]--;
                                        break;
                                    }
                                }
                                s_rolporcent(argument0);
                                mic.unit_evoke--;
                                mic.unit_info[r, c]++;
                                s_rolporcent(mic);
                                fertil = false;
                                s_recopila_auto(zona, 0, 1, 0);
                            }
                        }
                        break;
                }
            }
            else {
                hit--;
            }
        }
    }
    hit = clamp(hit, 0, m_sim_asedimax);
    if hit != 0 {
        // quitar vida y destruir zona
        with argument0 {
            hostigue += hit;
            resist_act = max(0, resist_act - hit);
            if resist_act == 0 {
                // destruir centro
                estad_mifin = o_mundo.reloj_simula;
                var mas = 0;
                for (var i = 0; i < m_map_total; i++) {
                    if hitzona[i] > mas {
                        mas = hitzona[i];
                        estad_killer = i;
                    }
                }
            }
        }
        // dar bonus a zonas involucradas
        var mas = 0;
        for (var i = 0; i < m_map_total; i++) {
            mas += hitzona[i];
        }
        for (var i = 0; i < m_map_total; i++) {
            hitzona[i] = floor((hitzona[i] / mas) * hit);
            with s_micentro(i) {
                estad_asedio += hitzona[i];
            }
        }
        // cambios visuales en edificios de adorno
        if !secreto {
            s_edifirol(false, true, true, argument0);
            if mejora {
                s_mejora();
            }
        }
    }
}


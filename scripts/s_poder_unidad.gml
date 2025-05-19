gml_pragma("forceinline");
// arg0: id unidad que trata de hacer efecto, debe actualizar reloj_poder
// arg1: verifienemi, 0:noverifi, 1:verififalse, 2:verifitrue
// ret: el mismo verifienemi modificado, o -1 si la unidad se autodestruyo

var res = argument1;
with argument0 {
    
    // primer ciclo para buscar objetivos
    var aux;
    switch rol {
        case m_rol_vivir:
            if fertil == 1 {
                if o_info.inocuo {
                    fertil = 0;
                    return res;
                }
                aux = s_blanco_reproduccion(id);
                if aux == noone {
                    return res;
                }
            }
            else {
                return res;
            }
            break;
        case m_rol_cocina:
        case m_rol_artesania:
        case m_rol_manufactura:
        case m_rol_salud:
        case m_rol_mensajeria:
        case m_rol_cultura:
        case m_rol_mafia:
            // buscar un aliado para afectarlo
            aux = s_blanco_aliado(id, rol, true);
            if aux == noone {
                return res;
            }
            break;
        case m_rol_transporte:
            // buscar un aliado para afectarlo
            if movim == -1 {
                aux = s_blanco_aliado(id, rol, true);
                if aux == noone {
                    return res;
                }
            }
            else {
                return res;
            }
            break;
        case m_rol_gobierno:
            // verificar espacio disponible
            var seg = noone;
            for (var g = 0; g < m_sim_seguidores; g++) {
                if seguidor[g] == noone {
                    seg = g;
                    break;
                }
                else if !instance_exists(seguidor[g]) {
                    seg = g;
                    break;
                }
                else if s_es_enemigo(id, seguidor[g]) {
                    seg = g;
                    break;
                }
            }
            if seg == noone {
                return res;
            }
            // buscar un aliado para afectarlo
            aux = s_blanco_aliado(id, rol, true);
            if aux == noone {
                return res;
            }
            else if aux.enlace != noone {
                return res;
            }
            break;
        case m_rol_erotico:
            // buscar un aliado para afectarlo
            if fertil == 1 {
                aux = s_blanco_aliado(id, rol, true);
                if aux == noone {
                    return res;
                }
                else if aux.enlace != noone {
                    return res;
                }
            }
            else {
                return res;
            }
            break;
        case m_rol_religion:
        case m_rol_juego:
        case m_rol_comercio:
        case m_rol_naturaleza:
        case m_rol_ciencia:
            // verificar enemigo antes de proseguir
            if res == 0 and enemigo != noone {
                if !instance_exists(enemigo) {
                    enemigo = noone;
                    res = 1;
                }
                else {
                    res = 2;
                }
            }
            if enemigo == noone {
                return res;
            }
            else if rol != m_rol_juego and (enemigo.rol == rol or
                    s_amante_unidad(enemigo)) {
                return res;
            }
            break;
        case m_rol_limpieza:
            // buscar un muerto para afectarlo
            aux = s_blanco_muerto(id);
            if aux == noone {
                return res;
            }
            break;
    }
    
    // segundo ciclo para ejecutar poderes
    switch rol {
        case m_rol_vivir:
            fertil = 0;
            aux.fertil = 0;
            var aux = s_crea_infante(x + random_range(-1, 1),
                y + random_range(-1, 1), choose(comport, aux.comport), zona);
            break;
        case m_rol_agricultura:
            s_aura_comida(id);
            break;
        case m_rol_cocina:
            s_recopila_auto(zona, 0, 0, 1);
            aux.comida = m_sim_comefull;
            break;
        case m_rol_artesania:
            s_recopila_auto(zona, 0, 0, 1);
            aux.capa = m_sim_vidacapa;
            break;
        case m_rol_manufactura:
            s_recopila_auto(zona, 0, 0, 1);
            aux.arma = true;
            break;
        case m_rol_salud:
            var vu = s_vida_unidad(aux);
            if aux.vida < vu {
                aux.vida = min(aux.vida + m_sim_vidacura, vu);
                vu = 1;
            }
            else {
                vu = 0;
            }
            if aux.toxico != -1 {
                aux.toxico = -1;
                s_recopila_auto(zona, 0, vu, 1);
            }
            else {
                s_recopila_auto(zona, 0, vu, 0);
            }
            break;
        case m_rol_gobierno:
            s_recopila_auto(zona, 0, 0, 1);
            seguidor[seg] = aux;
            aux.enlace = id;
            break;
        case m_rol_religion:
            if fertil == 1 and enemigo.object_index == o_unidad {
                fertil = 0;
                var su = m_sim_convertir;
                if enemigo.rol == m_rol_magia {
                    su *= 0.1;
                }
                if enemigo.suerte != 0 {
                    if enemigo.suerte == -1 {
                        su *= 1.5;
                    }
                    else if enemigo.suerte == 1 {
                        su *= 0.5;
                    }
                    else {
                        su *= 0.2;
                    }
                }
                if suerte != 0 {
                    if suerte == -1 {
                        su *= 0.3;
                    }
                    else if suerte == 1 {
                        su *= 1.5;
                    }
                    else {
                        su *= 2;
                    }
                }
                if random(1) < su {
                    s_convertir_unidad(id, enemigo);
                }
            }
            break;
        case m_rol_arte:
            s_aura_suerte(id);
            break;
        case m_rol_juego:
            if vida < s_vida_unidad(id) and movim == 0 and
                    point_distance(x, y, enemigo.x, enemigo.y) < m_sim_cerca {
                s_explosion(id);
                res = -1;
            }
            break;
        case m_rol_erotico:
            fertil = 0;
            subenlace = aux;
            aux.enlace = id;
            aux.vida = s_vida_unidad(aux);
            aux.toxico = -1;
            aux.suerte = max(0, aux.suerte);
            s_recopila_auto(zona, 0, 1, 0);
            break;
        case m_rol_comercio:
            s_comerciar(id);
            break;
        case m_rol_limpieza:
            var mv = s_vida_unidad(id);
            if vida < mv {
                s_recopila_auto(zona, 0, 0, 1);
                vida = min(mv, vida + m_sim_vidalimp);
                aux.carne = false;
            }
            break;
        case m_rol_naturaleza:
            if enemigo.rol != m_rol_vivir and enemigo.object_index == o_unidad {
                if !(enemigo.rol == m_rol_erotico and enemigo.subenlace != noone) {
                    s_recopila_auto(zona, 0, 0, 1);
                    s_elimina_varrol(enemigo);
                    enemigo.rol = m_rol_vivir;
                    enemigo.fertil = 0;
                    enemigo.vida = min(enemigo.vida, s_vida_unidad(enemigo));
                }
            }
            break;
        case m_rol_domesticacion:
            if fertil == 1 {
                fertil = 0;
                var aux = s_crea_perro(x + random_range(-1, 1),
                    y + random_range(-1, 1), zona);
                aux.meta = id;
            }
            break;
        case m_rol_transporte:
            if random(1) < m_sim_elevese {
                s_recopila_auto(zona, 0, 0, 1);
                aux.movim = m_sim_reloglobo;
            }
            break;
        case m_rol_mensajeria:
            switch comport {
                case m_comport_hogar:
                    if aux.comport != m_comport_vecino {
                        var ok = true;
                        if aux.comport == m_comport_hogar {
                            if aux.meta != noone {
                                if aux.meta.hostigue > m_sim_hitostigue {
                                    ok = false;
                                }
                            }
                        }
                        if ok {
                            s_recopila_auto(zona, 0, 1, 0);
                            aux.comport = m_comport_vecino;
                            aux.meta = noone;
                        }
                    }
                    break;
                case m_comport_seguir:
                    if aux.comport != m_comport_seguir {
                        var ajuda = s_ayuda(id, false);
                        if ajuda != noone {
                            s_recopila_auto(zona, 0, 0, 1);
                            aux.comport = m_comport_hogar;
                            aux.meta = ajuda;
                        }
                        else if aux.comport == m_comport_hogar {
                            s_recopila_auto(zona, 0, 1, 0);
                            aux.comport = m_comport_grupo;
                            aux.meta = noone;
                        }
                    }
                    break;
                default:
                    if aux.comport != comport {
                        aux.comport = comport;
                        aux.meta = noone;
                    }
                    break;
            }
            break;
        case m_rol_cultura:
            s_recopila_auto(zona, 0, 0, 1);
            aux.suerte = m_sim_hitsuertemax;
            break;
        case m_rol_ingenieria:
            var aux = s_blanco_bot(id, false);
            if aux != noone {
                aux.reloj_fin = max(aux.reloj_fin, floor(m_sim_relojbot / 2));
                aux.comport = comport;
                aux.meta = noone;
            }
            else if fertil == 1 and enemigo != noone and movim == 0 {
                fertil = 0;
                aux = s_crea_robot(x + random_range(-1, 1),
                    y + random_range(-1, 1), comport, zona);
            }
            break;
        case m_rol_arquitectura:
            if fertil == 1 and random(1) < m_sim_creacarpa {
                if !collision_circle(x, y, visionmed, o_bloque, true, false) and
                        movim == 0 {
                    fertil = 0;
                    var aux = instance_create(x, y, o_carpa);
                    aux.zona = zona;
                    aux.conti = conti;
                    aux.aporte = 1;
                    s_recopila_auto(zona, 0, 0, 1);
                }
                else {
                    var aux = s_blanco_carpa(id, true);
                    if aux != noone {
                        if aux.aporte < m_sim_carpaaport {
                            aux.aporte++;
                            fertil = 0;
                        }
                    }
                }
            }
            break;
        case m_rol_mafia:
            var contra = 1;
            if aux.rol == m_rol_defensa {
                aux.vida = max(0, aux.vida - floor(m_sim_hitlacra * 0.5));
                contra = 2;
            }
            else {
                aux.vida = max(0, aux.vida - m_sim_hitlacra);
            }
            if aux.vida == 0 {
                s_recopila_auto(zona, 0, 1, 0);
                s_matar_unidad(aux, -1, true);
            }
            if random(1) < m_sim_lacramal * contra {
                vida = max(0, vida - m_sim_hitbasic);
                if vida == 0 {
                    s_recopila_auto(zona, 0, 0, 1);
                    s_matar_unidad(id, -1, true);
                    res = -1;
                }
            }
            break;
        case m_rol_ciencia:
            if enemigo.object_index == o_unidad {
                enemigo.toxico = zona;
            }
            break;
    }
}
return res;


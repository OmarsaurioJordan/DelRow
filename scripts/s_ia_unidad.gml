gml_pragma("forceinline");
// arg0: id instancia que llama a hacer su step

with argument0 {
    
    // variables locales al paso
    var movio = false;
    var verifienemi = 0; // 0:noverifi, 1:verififalse, 2:verifitrue
    var dondesta = 0; // diferente de 0 si retorno grid suelo
    
    // disminuir tiempo de globo
    if movim > 0 {
        dondesta = s_grid_get(gr_suelo, x, y);
        if dondesta == 1 {
            movim--;
        }
        else {
            movim = m_sim_reloglobo;
        }
    }
    
    // colisiones y rebote
    if random(1) < m_sim_probcoli {
        var otro = instance_place(x, y, o_objeto);
        if otro != noone {
            var d = point_direction(otro.x, otro.y, x, y);
            var v = s_vel_unidad(id);
            x += lengthdir_x(v, d);
            y += lengthdir_y(v, d);
            movio = true;
            if object_get_parent(otro.object_index) == o_movil {
                v = s_vel_unidad(otro);
                otro.x += lengthdir_x(v, -d);
                otro.y += lengthdir_y(v, -d);
                s_limit_unidad(otro);
            }
        }
    }
    
    // disminuir comida, hambre
    if comida > 0 {
        comida--;
    }
    
    // golpear enemigos
    if reloj_hit > 0 {
        reloj_hit--;
    }
    else {
        reloj_hit = s_reload_unidad(id);
        // buscar enemigo y confirmarlo
        var ene = s_blanco_enemigo(id);
        if ene != noone {
            enemigo = ene;
        }
        else if enemigo != noone {
            if instance_exists(enemigo) {
                if random(1) < m_sim_enemydistok and
                        point_distance(x, y, enemigo.x, enemigo.y) > m_sim_vision {
                    enemigo = noone;
                }
            }
            else {
                enemigo = noone;
            }
        }
        // atacar al enemigo
        if enemigo != noone {
            if s_ataque(id, enemigo) {
                enemigo = noone;
                verifienemi = 1;
            }
            else {
                verifienemi = 2;
            }
        }
        else {
            verifienemi = 1;
        }
    }
    
    // ejercer poderes especiales
    if reloj_poder > 0 {
        reloj_poder--;
    }
    else {
        reloj_poder = irandom_range(m_sim_relojpowmin, m_sim_relojpowmax);
        // cambios aleatorios diversos
        if comport == m_comport_hogar and o_info.continental { // proteger aliados
            if random(1) < m_sim_ayudar {
                var aju = s_ayuda(id, true);
                if aju != noone {
                    meta = aju;
                }
            }
        }
        if comport == m_comport_seguir and meta == noone { // tratar de ir a centro
            meta = s_micentro(zona);
        }
        if toxico != -1 { // procesar envenenamiento
            var tox = random(1);
            if tox < m_sim_toxichit { // golpeado por toxico
                vida = max(0, vida - m_sim_hittoxic);
                if vida == 0 {
                    s_recopila_auto(toxico, 0, 1, 0);
                    s_matar_unidad(id, toxico, true);
                    exit;
                }
            }
            else if tox < m_sim_hittoxic + m_sim_toxicmas { // contagio a aliado
                if vida < s_vida_unidad(id) * m_sim_toxicfreno {
                    var aux = s_blanco_aliado(id, m_rol_ciencia, true);
                    if aux != noone {
                        if !s_amante_unidad(aux) and
                                aux.vida < s_vida_unidad(aux) * m_sim_toxicfreno {
                            s_recopila_auto(toxico, 0, 0, 1);
                            aux.toxico = toxico;
                        }
                    }
                }
            }
            else if tox < m_sim_hittoxic + m_sim_toxicmas + m_sim_toxiccur { // curarse
                toxico = -1;
            }
        }
        if suerte != 0 { // disminuir suerte con suerte
            if suerte == -1 or suerte == 1 {
                if random(1) < m_sim_nosuerte {
                    suerte = 0;
                }
            }
            else if random(1) < m_sim_nonosuerte {
                suerte = 1;
            }
        }
        var vieama = amante; // ver estado de enlace con amante
        amante = s_amante_unidad(id);
        if amante != vieama and vieama {
            s_recopila_auto(zona, 0, 0, 1);
        }
        if rol == m_rol_erotico {
            if subenlace != noone {
                if !instance_exists(subenlace) {
                    subenlace = noone;
                }
            }
        }
        // poderes
        verifienemi = s_poder_unidad(id, verifienemi);
        if verifienemi == -1 {
            exit;
        }
    }
    
    // verificar enemigo antes de perseguirlo
    if verifienemi == 0 and enemigo != noone {
        if !instance_exists(enemigo) {
            enemigo = noone;
        }
    }
    
    // hacer movimientos en el mapa
    if enemigo != noone { // perseguir al enemigo
        movio = movio or s_move_unidad(id, enemigo, m_sim_cerca);
    }
    else if enlace != noone { // amante o lider
        if !instance_exists(enlace) {
            enlace = noone;
        }
        if enlace != noone {
            movio = movio or s_move_unidad(id, enlace, m_sim_cerca);
        }
    }
    else { switch comport { // comportamiento
        case m_comport_hogar:
        case m_comport_azar:
        case m_comport_pleito:
        case m_comport_provecho:
        case m_comport_vecino:
            if meta != noone {
                if meta.resist_act == 0 {
                    meta = noone;
                }
                else {
                    movio = movio or s_camino_unidad(id, meta, visioncuar);
                }
            }
            else {
                s_mimeta(id, false);
            }
            break;
        case m_comport_grupo:
            if meta != noone {
                movio = movio or s_turba_unidad(id, meta, visioncuar);
            }
            else {
                s_blanco_grupo(id);
            }
            break;
        case m_comport_seguir:
            if meta != noone {
                if instance_exists(meta) {
                    movio = movio or s_move_unidad(id, meta, m_sim_cerca);
                    if random(1) < m_sim_buscally and meta.object_index == o_centro {
                        meta = noone;
                    }
                }
                else {
                    meta = noone;
                }
            }
            else {
                meta = s_blanco_aliado(id, -1, false);
                if meta != noone {
                    if meta.comport == m_comport_seguir or meta.comport == m_comport_hogar {
                        meta = noone;
                    }
                }
            }
            break;
    } }
    
    // limitar al mundo y verificar si tierra o agua
    if movio {
        s_limit_unidad(id);
        if movim <= 0 {
            if dondesta == 0 {
                dondesta = s_grid_get(gr_suelo, x, y);
            }
            if dondesta == 1 {
                movim = 0;
            }
            else {
                movim = -1;
            }
        }
    }
}


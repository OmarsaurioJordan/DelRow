gml_pragma("forceinline");
// arg0: id instancia que llama a hacer su step

with argument0 {
    
    // variables locales al paso
    var movio = false;
    var verifienemi = 0; // 0:noverifi, 1:verififalse, 2:verifitrue
    
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
    
    // ejecutar relojes de cambio de vida
    if reloj_fin > 0 {
        reloj_fin--;
        if movim == -1 and random(1) < 0.25 {
            reloj_fin--;
        }
        if reloj_fin <= 0 {
            s_matar_unidad(id, -1, true);
            exit;
        }
    }
    
    // ejercer poderes especiales
    if reloj_poder > 0 {
        reloj_poder--;
    }
    else {
        reloj_poder = irandom_range(m_sim_relojpowmin, m_sim_relojpowmax);
        // cambios aleatorios diversos
        var car = s_blanco_carpa(id, false);
        if car != noone {
            if random(1) < m_sim_jodetorre {
                car.aporte--;
                if car.aporte <= 0 {
                    var aux = instance_create(car.x, car.y, o_carpafin);
                    aux.zona = car.zona;
                    aux.conti = car.conti;
                    s_recopila_auto(zona, 0, 1, 0);
                    with car {
                        instance_destroy();
                    }
                }
            }
            reloj_fin = max(0, reloj_fin - m_sim_botcansado);
            if reloj_fin == 0 {
                s_recopila_auto(zona, 0, 0, 1);
                s_matar_unidad(id, -1, true);
                exit;
            }
        }
    }
    
    // hacer movimientos en el mapa
    switch comport { // comportamiento
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
    }
    
    // limitar al mundo y verificar si tierra o agua
    if movio {
        s_limit_unidad(id);
        if s_grid_get(gr_suelo, x, y) == 1 {
            movim = 0;
        }
        else {
            movim = -1;
        }
    }
}


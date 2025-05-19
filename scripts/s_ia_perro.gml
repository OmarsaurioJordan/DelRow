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
    
    // golpear enemigos
    if reloj_hit > 0 {
        reloj_hit--;
    }
    else {
        reloj_hit = m_sim_hitreload + irandom(5);
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
            if enemigo.movim <= 0 {
                if s_ataque(id, enemigo) {
                    s_recopila_auto(zona, 0, 1, 0);
                    enemigo = noone;
                    verifienemi = 1;
                }
                else {
                    verifienemi = 2;
                }
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
        if meta == noone { // perro muere si no domador
            s_recopila_auto(zona, 0, 0, 1);
            s_matar_unidad(id, -1, true);
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
    else { // comportamiento
        if meta != noone {
            if !instance_exists(meta) {
                meta = noone;
            }
            if meta != noone {
                movio = movio or s_move_unidad(id, meta, m_sim_cerca);
            }
        }
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


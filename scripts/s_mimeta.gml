gml_pragma("forceinline");
// arg0: id de instancia que define su meta o centro a ir
// arg1: true si forzar a buscar

with argument0 { if argument1 or random(1) < m_sim_buscameta {
    var lista = ds_priority_create();
    switch comport {
        case m_comport_hogar:
            with o_centro {
                if resist_act != 0 and !s_es_enemigo(argument0, id) {
                    ds_priority_add(lista, id, random(1));
                }
            }
            break;
        case m_comport_azar:
            with o_centro {
                if resist_act != 0 and s_es_enemigo(argument0, id) {
                    ds_priority_add(lista, id, random(1));
                }
            }
            break;
        case m_comport_pleito:
        case m_comport_provecho:
            with o_centro {
                if resist_act != 0 and s_es_enemigo(argument0, id) {
                    var d = s_units_disp(id);
                    ds_priority_add(lista, id, d);
                }
            }
            break;
        case m_comport_vecino:
            var xx;
            with o_centro {
                if resist_act != 0 and s_es_enemigo(argument0, id) {
                    xx = abs(x - argument0.x);
                    if xx > widthmed {
                        d = point_distance(0, y, room_width - xx, argument0.y);
                    }
                    else {
                        d = point_distance(x, y, argument0.x, argument0.y);
                    }
                    ds_priority_add(lista, id, d);
                }
            }
            break;
    }
    if !ds_priority_empty(lista) { switch comport {
        case m_comport_hogar:
        case m_comport_azar:
        case m_comport_vecino:
        case m_comport_provecho:
            meta = ds_priority_find_min(lista);
            break;
        case m_comport_pleito:
            meta = ds_priority_find_max(lista);
            break;
    } }
    ds_priority_destroy(lista);
    if meta == noone {
        switch comport {
            case m_comport_hogar:
                comport = m_comport_vecino;
                s_mimeta(id, true);
                if meta == noone {
                    comport = m_comport_grupo;
                }
                break;
            default:
                comport = m_comport_hogar;
                break;
        }
    }
} }


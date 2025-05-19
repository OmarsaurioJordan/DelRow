gml_pragma("forceinline");
// arg0: id unidad quien ataca
// arg1: id unidad atacada
// ret: true si murio

var res = false;
with argument0 {
    // verificar cercania primero
    if point_distance(x, y, argument1.x, argument1.y) > m_sim_cerchit {
        break;
    }
    var hit = s_hit_unidad(id);
    // el arma secundaria se puede romper
    if arma {
        if random(1) < m_sim_armafin {
            arma = false;
        }
    }
    // la capa del enemigo hace de escudo
    if argument1.capa != 0 {
        if argument1.capa >= hit {
            argument1.capa -= hit;
            hit = 0;
        }
        else {
            hit -= argument1.capa;
            argument1.capa = 0;
        }
    }
    // restar valor a la vida y procesar muerte
    argument1.vida = max(0, argument1.vida - hit);
    if argument1.vida == 0 {
        res = true;
        if rol == m_rol_funebre {
            var vd = s_vida_unidad(id);
            if vida < vd {
                if argument1.object_index == o_unidad or
                        argument1.object_index == o_perro {
                    vida = min(vida + m_sim_vidacanival, vd);
                    s_recopila_auto(zona, 0, 1, 0);
                }
            }
        }
        s_matar_unidad(argument1, zona, true);
    }
    // propagar enemistad
    else {
        var quien = irandom(2);
        // enemistad mutua
        if argument1.enemigo == noone or random(1) < m_sim_buscaenemy {
            argument1.enemigo = id;
        }
        // poner objetivo a aliado enlazado
        if quien == 0 and enlace != noone {
            if instance_exists(enlace) {
                if enlace.enemigo == noone or random(1) < m_sim_buscaenemy {
                    enlace.enemigo = argument1;
                }
            }
            else {
                enlace = noone;
            }
        }
        // poner objetivo a aliado seguido
        if quien == 1 and comport == m_comport_seguir and meta != noone {
            if instance_exists(meta) {
                if meta.object_index == o_unidad {
                    if meta.enemigo == noone or random(1) < m_sim_buscaenemy {
                        meta.enemigo = argument1;
                    }
                }
            }
            else {
                meta = noone;
            }
        }
        // propagar enemigo a subgrupo
        if quien == 2 {
            switch rol {
                case m_rol_gobierno:
                    var gg;
                    for (var g = 0; g < m_sim_seguidores; g++) {
                        gg = seguidor[g];
                        if gg != noone {
                            if instance_exists(gg) {
                                if gg.enemigo == noone or random(1) < m_sim_buscaenemy {
                                    gg.enemigo = argument1;
                                }
                            }
                            else {
                                seguidor[g] = noone;
                            }
                        }
                    }
                    break;
                case m_rol_domesticacion:
                    with o_perro {
                        if meta == argument0 and
                                (enemigo == noone or random(1) < m_sim_buscaenemy) {
                            enemigo = argument1;
                        }
                    }
                    break;
                case m_rol_erotico:
                    if subenlace != noone {
                        if instance_exists(subenlace) {
                            if subenlace.enemigo == noone or random(1) < m_sim_buscaenemy {
                                subenlace.enemigo = argument1;
                            }
                        }
                        else {
                            subenlace = noone;
                        }
                    }
                    break;
            }
        }
    }
}
return res;


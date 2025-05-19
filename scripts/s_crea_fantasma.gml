// arg0: posicion x
// arg1: posicion y
// arg2: ind de zona a la que pertenece
// ret: id instancia creada

var res = instance_create(argument0, argument1, o_fantasma);
with res {
    // parametros base
    depth = -y;
    zona = argument2;
    conti = -1;
    if o_info.continental {
        conti = s_micontinente(zona);
    }
    // entidades en mira
    enemigo = noone; // rejilla navegacion, aliado seguir, centroide grupo
    // relojes de accion y efectos
    reloj_poder = 0; // para usar habilidad, constante
    reloj_fin = m_sim_relojfanta; // para eliminarse
    // basura
    movim = 0;
    rol = m_rol_fantasma;
    // estadisticas
    o_mundo.inst_vivas++;
    o_mundo.inst_total++;
    o_mundo.inst_maxim = max(o_mundo.inst_maxim, o_mundo.inst_vivas);
}
return res;


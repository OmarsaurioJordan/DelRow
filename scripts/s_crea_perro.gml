// arg0: posicion x
// arg1: posicion y
// arg2: ind de zona a la que pertenece
// ret: id instancia creada

var res = instance_create(argument0, argument1, o_perro);
with res {
    // parametros base
    depth = -y;
    rol = m_rol_perro;
    zona = argument2;
    conti = -1;
    if o_info.continental {
        conti = s_micontinente(zona);
    }
    // parametros complejos
    movim = 0; // -1:agua, 0:tierra
    // entidades en mira
    enemigo = noone; // ultimo enemigo visto
    meta = noone; // rejilla navegacion, aliado seguir, centroide grupo
    // relojes de accion y efectos
    reloj_hit = 0; // para golpear
    reloj_poder = 0; // para usar habilidad, constante
    // basura
    fertil = 0;
    esactiv = true;
    arma = false;
    capa = 0;
    enlace = noone;
    suerte = 0;
    comida = 0;
    comport = m_comport_seguir;
    // con funciones
    vida = s_vida_unidad(id); // puntos de vida de la unidad
    // estadisticas
    o_mundo.inst_vivas++;
    o_mundo.inst_total++;
    o_mundo.inst_maxim = max(o_mundo.inst_maxim, o_mundo.inst_vivas);
}
return res;


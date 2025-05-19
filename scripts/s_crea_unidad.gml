// arg0: posicion x
// arg1: posicion y
// arg2: ind de rol
// arg3: ind de comport
// arg4: porcentaje genero, 0:hombres, 1:mujeres
// arg5: ind de zona a la que pertenece
// arg6: true si es usuario activo
// arg7: fertil, -1, 0, 1 (poner en 1 si natural, -1 si nacido
// ret: id instancia creada

var res = instance_create(argument0, argument1, o_unidad);
with res {
    // parametros base
    depth = -y;
    if random(1) < argument4 {
        genero = 0;
    }
    else {
        genero = 1;
    }
    rol = argument2;
    comport = argument3;
    zona = argument5;
    conti = -1;
    if o_info.continental {
        conti = s_micontinente(zona);
    }
    esactiv = argument6;
    // parametros complejos
    fertil = argument7; // 1:acciones unicas ok, 0:acciones consumadas, -1:no nacido
    capa = 0; // puntos de impacto de la capa
    arma = false; // arma secundaria, tiene chance de romperse
    movim = 0; // -1:agua, 0:tierra, 0++:aire
    toxico = -1; // si esta enfermo por toxina, ind de zona que lo enfermo
    grupo = noone; // para calcular clusters k-medias, centroides de grupo
    amante = false; // cada tanto se verificara si esta enganchado
    // entidades en mira
    enemigo = noone; // ultimo enemigo visto
    enlace = noone; // amante o lider
    meta = noone; // rejilla navegacion, aliado seguir, centroide grupo
    // relojes de accion y efectos
    comida = 0; // disminuye con tiempo, de estar da bonus a vel ataque
    suerte = 0; // -1:mala, 0:neutra, 1:buena, 2+:muy buena
    reloj_hit = 0; // para golpear, cambia con comida
    reloj_poder = 0; // para usar habilidad, constante
    // con funciones
    vida = s_vida_unidad(id); // puntos de vida de la unidad
    // para roles especificos
    switch rol {
        case m_rol_gobierno:
            for (var g = m_sim_seguidores - 1; g >= 0; g--) {
                seguidor[g] = noone;
            }
            break;
        case m_rol_erotico:
            subenlace = noone; // sub amante
            break;
    }
    // para mover a lo loco
    do {
        desen_x = random_range(-visionmed, visionmed);
        desen_y = random_range(-visionmed, visionmed);
    }
    until point_distance(0, 0, desen_x, desen_y) < visionmed;
    // ajustar estadisticas de centro
    if fertil != -1 {
        with s_micentro(argument5) {
            if argument6 {
                unit_activ--;
            }
            unit_evoke++;
            unit_vivas++;
            unit_info[argument2, argument3]--;
            o_mundo.unit_vivas++;
            o_mundo.inst_vivas++;
            o_mundo.inst_total++;
            o_mundo.inst_maxim = max(o_mundo.inst_maxim, o_mundo.inst_vivas);
            s_rolporcent(id);
        }
    }
    else {
        with s_micentro(argument5) {
            unit_vivas++;
            o_mundo.unit_vivas++;
            o_mundo.inst_vivas++;
            o_mundo.inst_total++;
            o_mundo.inst_maxim = max(o_mundo.inst_maxim, o_mundo.inst_vivas);
        }
    }
}
return res;


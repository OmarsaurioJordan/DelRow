gml_pragma("forceinline");
// arg0: id unidad que se destruye
// arg1: ind zona que lo destruyo o -1 si autoaniquilacion
// arg2: true dejar cadaver
// ret: id de muerto creado

var aux = noone;
if argument0.object_index == o_unidad {
with argument0 {
    
    // modificar estadisticas de centro
    with s_micentro(zona) {
        unit_vivas--;
        o_mundo.unit_vivas--;
        o_mundo.inst_vivas--;
    }
    if argument1 != -1 {
        with s_micentro(argument1) {
            estad_cazados++;
        }
    }
    
    // crear fantasma
    if rol == m_rol_magia and argument2 {
        var aux = s_crea_fantasma(x, y, zona);
        if o_mundo.enmira == id {
            o_mundo.enmira = aux;
        }
    }
    // crear muerto
    if argument2 {
        s_recopila_auto(argument1, 1, 0, 0);
        aux = instance_create(x, y, o_muerto);
        aux.tipo = genero;
        if s_grid_get(gr_suelo, x, y) != 1 {
            aux.tipo += 5;
        }
        if conti == -1 {
            aux.color = tinte[zona];
        }
        else {
            aux.color = tinte[conti];
        }
    }
    // eliminar instancia
    instance_destroy();
} }
else {
with argument0 {
    // estadisticas
    o_mundo.inst_vivas--;
    // crear muerto
    if argument2 {
        aux = instance_create(x, y, o_muerto);
        aux.carne = false;
        aux.tipo = 1 + abs(rol);
        if s_grid_get(gr_suelo, x, y) != 1 {
            aux.tipo += 5;
        }
        if conti == -1 {
            aux.color = tinte[zona];
        }
        else {
            aux.color = tinte[conti];
        }
    }
    // eliminar instancia
    instance_destroy();
} }
return aux;


gml_pragma("forceinline");
// arg0: id instancia que llama
// ret: id aliado encontrado o noone

var res = noone;
with argument0 {
    var aux = instance_nearest(x + random_range(-visionmed, visionmed),
        y + random_range(-visionmed, visionmed), o_unidad);
    if !s_es_enemigo(id, aux) and aux != id and aux.rol == rol and aux.fertil == 1 {
        res = aux;
    }
}
return res;


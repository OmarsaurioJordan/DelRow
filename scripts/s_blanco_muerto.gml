gml_pragma("forceinline");
// arg0: id instancia que llama
// ret: id muerto encontrado o noone

var res = noone;
if instance_exists(o_muerto) {
    with argument0 {
        var aux = instance_nearest(x + random_range(-visionmed, visionmed),
            y + random_range(-visionmed, visionmed), o_muerto);
        if aux.carne and point_distance(x, y, aux.x, aux.y) < visionmed {
            res = aux;
        }
    }
}
return res;


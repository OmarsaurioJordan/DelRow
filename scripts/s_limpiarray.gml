gml_pragma("forceinline");
// arg0: id de matrix a limpiar
// ret: id matrix con 0s

var res = argument0;
for (var i = 0; i < array_height_2d(res); i++) {
    for (var k = 0; k < array_length_2d(res, i); k++) {
        res[i, k] = 0;
    }
}
return res;


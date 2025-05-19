gml_pragma("forceinline");
// arg0: id instancia que llama para moverse
// arg1: id centro con la ruta llamada rumbo
// arg2: distancia minima para alcanzar
// ret: true si hubo movimiento

var res = false;
with argument0 {
    var xx = argument1.x + desen_x;
    var yy = argument1.y + desen_y;
    var d = point_distance(x, y, xx, yy);
    if d > argument2 {
        d = s_grid_get(argument1.rumbo, x, y);
        var v = s_vel_unidad(id);
        x += lengthdir_x(v, d);
        y += lengthdir_y(v, d);
        res = true;
    }
}
return res;


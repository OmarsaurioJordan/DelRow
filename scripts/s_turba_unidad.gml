gml_pragma("forceinline");
// arg0: id instancia que llama para moverse
// arg1: id instancia hacia donde moverse
// arg2: distancia minima para alcanzar
// ret: true si hubo movimiento

var res = false;
with argument0 {
    var sentido = 1;
    var xx = argument1.x + desen_x;
    var yy = argument1.y + desen_y;
    if abs(x - xx) > widthmed {
        sentido = -1;
    }
    var d = point_distance(x, y, xx, yy);
    if d > argument2 {
        d = point_direction(x, y, xx, yy);
        var v = s_vel_unidad(id);
        x += sentido * lengthdir_x(v, d);
        y += lengthdir_y(v, d);
        res = true;
    }
}
return res;


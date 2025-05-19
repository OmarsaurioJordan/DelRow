// arg0: numero de monigotes
// ret: matrix con posiciones x,y

var res = noone;
var xx, yy, ok, i, freno, reres;
repeat argument0 {
    freno = 100;
    do {
        freno--;
        ok = true;
        xx = irandom_range(-100, 50);
        yy = irandom_range(-100, 50);
        if is_array(res) {
            for (var m = 0; m < array_height_2d(res); m++) {
                if point_distance(xx, yy, res[m, 0], res[m, 1]) < 40 {
                    ok = false;
                    break;
                }
            }
        }
    }
    until ok or freno <= 0;
    if freno <= 0 {
        break;
    }
    if is_array(res) {
        i = array_height_2d(res);
        res[i, 0] = xx;
        res[i, 1] = yy;
    }
    else {
        res[0, 0] = xx;
        res[0, 1] = yy;
    }
}
// ordenar para dibujado
var list = ds_priority_create();
for (var m = 0; m < array_height_2d(res); m++) {
    ds_priority_add(list, m, res[m, 1]);
}
reres = noone;
for (var m = 0; m < array_height_2d(res); m++) {
    i = ds_priority_delete_min(list);
    reres[m, 0] = res[i, 0];
    reres[m, 1] = res[i, 1];
}
res = reres;
ds_priority_destroy(list);
return res;


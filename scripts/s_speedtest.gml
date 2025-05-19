// hacer ensayos sobre velocidad de ejecucion

repeat 10000 {
    instance_create(random(room_width), random(room_height), o_grupo);
}
var mi = instance_find(o_grupo, 8201);
var ot = instance_find(o_grupo, 1122);
var res = "";
var cicle = 1000000;
var tf, ti, aux;
// primer propuesta
ti = current_time;
repeat cicle {
    aux = point_distance(mi.x, mi.y, ot.x, ot.y);
}
tf = current_time;
res += string(tf - ti) + " normal / ";
// segunda propuesta
ti = current_time;
repeat cicle {
    aux = (ot.x - mi.x) * (ot.x - mi.x) + (ot.y - mi.y) * (ot.y - mi.y);
}
tf = current_time;
res += string(tf - ti) + " square (ms)";
show_message(res);
game_end();


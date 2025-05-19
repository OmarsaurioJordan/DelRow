// arg0: desfase x
// arg1: desfase y
// arg2: rol

var xx = 175 + argument0;
var yy = 500 + argument1;
if argument2 == 24 {
    draw_sprite(d_supunidad, 7, xx - 35 + 38, yy + 9 - 7);
}
draw_sprite(d_supunidad, usuario_genero, xx - 35, yy + 9);
draw_sprite(d_supitem, argument2, xx - 35, yy + 9);
switch argument2 {
    case 0:
        draw_sprite(d_supunidad, 5, xx - 35 + 30, yy + 9 + 5);
        break;
    case 11:
        draw_sprite_ext(d_supunidad, 8, xx - 35 + 30, yy + 9 + 5,
            1, 1, 0, c_white, 0.5);
        break;
    case 20:
        draw_sprite(d_supunidad, 6, xx - 35 + 30, yy + 9 + 5);
        break;
}


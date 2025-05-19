// arg0: ind de piel
// ret: color

var res = c_white;
switch argument0 {
    case 0: res = make_colour_rgb(255, 240, 223); break;
    case 1: res = make_colour_rgb(255, 231, 184); break;
    case 2: res = make_colour_rgb(255, 212, 200); break;
    case 3: res = make_colour_rgb(255, 192, 192); break;
    case 4: res = make_colour_rgb(255, 221, 129); break;
    case 5: res = make_colour_rgb(255, 199, 90); break;
    case 6: res = make_colour_rgb(213, 140, 0); break;
    case 7: res = make_colour_rgb(181, 119, 0); break;
    case 8: res = make_colour_rgb(150, 109, 0); break;
    case 9: res = make_colour_rgb(118, 72, 0); break;
}
return res;


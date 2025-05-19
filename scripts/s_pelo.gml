// arg0: ind de color de pelo
// ret: color

var res = c_white;
switch argument0 {
    case 0: res = make_colour_rgb(224, 224, 224); break;
    case 1: res = make_colour_rgb(128, 128, 128); break;
    case 2: res = make_colour_rgb(64, 64, 64); break;
    case 3: res = make_colour_rgb(254, 255, 176); break;
    case 4: res = make_colour_rgb(252, 255, 42); break;
    case 5: res = make_colour_rgb(189, 177, 0); break;
    case 6: res = make_colour_rgb(205, 149, 0); break;
    case 7: res = make_colour_rgb(173, 105, 0); break;
    case 8: res = make_colour_rgb(142, 93, 0); break;
    case 9: res = make_colour_rgb(87, 53, 0); break;
    case 10: res = make_colour_rgb(0, 228, 32); break;
    case 11: res = make_colour_rgb(0, 158, 22); break;
    case 12: res = make_colour_rgb(154, 253, 255); break;
    case 13: res = make_colour_rgb(0, 188, 205); break;
    case 14: res = make_colour_rgb(105, 183, 255); break;
    case 15: res = make_colour_rgb(12, 92, 255); break;
    case 16: res = make_colour_rgb(255, 113, 203); break;
    case 17: res = make_colour_rgb(192, 0, 205); break;
    case 18: res = make_colour_rgb(255, 86, 28); break;
    case 19: res = make_colour_rgb(189, 48, 0); break;
}
return res;


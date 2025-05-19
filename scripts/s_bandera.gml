// arg0: ind de zona
// ret: color

var res = c_white;
switch argument0 {
    case m_map_canada: res = make_colour_rgb(129, 144, 255); break;
    case m_map_usa: res = make_colour_rgb(50, 103, 255); break;
    case m_map_mexico: res = make_colour_rgb(203, 0, 228); break;
    case m_map_colombia: res = make_colour_rgb(54, 255, 28); break;
    case m_map_brazil: res = make_colour_rgb(0, 165, 0); break;
    case m_map_argentina: res = make_colour_rgb(203, 255, 168); break;
    case m_map_castilla: res = make_colour_rgb(255, 203, 184); break;
    case m_map_inglaterra: res = make_colour_rgb(255, 97, 52); break;
    case m_map_alemania: res = make_colour_rgb(255, 176, 243); break;
    case m_map_rusia: res = make_colour_rgb(211, 62, 0); break;
    case m_map_arabia: res = make_colour_rgb(253, 255, 145); break;
    case m_map_india: res = make_colour_rgb(255, 241, 20); break;
    case m_map_china: res = make_colour_rgb(170, 173, 0); break;
    case m_map_egipto: res = make_colour_rgb(192, 254, 255); break;
    case m_map_congo: res = make_colour_rgb(42, 237, 255); break;
    case m_map_sudafrica: res = make_colour_rgb(0, 181, 170); break;
    case m_map_australia: res = make_colour_rgb(195, 195, 195); break;
}
return merge_colour(res, c_white, 0.3);


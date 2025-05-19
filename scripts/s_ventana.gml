//acomoda ventana al tamanno del monitor
// arg0: true si prima el horizontal

var ew, eh, er, w, h;

if argument0 {
    if automatico {
        ew = 0.1; //porcentaje de anchura pantalla
    }
    else {
        ew = 0.8;
    }
    er = room_width / room_height; //relaccion w / h ventana
    w = display_get_width() * ew;
    h = w / er;
}
else {
    if automatico {
        eh = 0.1; //porcentaje de altura pantalla
    }
    else {
        eh = 0.8;
    }
    er = room_height / room_width; //relaccion h / w ventana
    h = display_get_height() * eh;
    w = h / er;
}

if window_get_height() != h
{
    window_set_size(w, h);
    if automatico or argument0 {
        window_set_position(display_get_width() * 0.1, display_get_height() * 0.1);
    }
    else {
        window_center();
    }
}


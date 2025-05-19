// para testeo, muestra talla de cuadros
// arg0: str libre

var w, h;

show_debug_message("***Datos view***");
show_debug_message(argument0);

w = window_get_width();
h = window_get_height();
show_debug_message("window: " + string(w) + "," + string(h));

w = room_width;
h = room_height;
show_debug_message("room: " + string(w) + "," + string(h));

w = display_get_width();
h = display_get_height();
show_debug_message("display: " + string(w) + "," + string(h));

w = view_wview[0];
h = view_hview[0];
show_debug_message("view: " + string(w) + "," + string(h));

w = view_wport[0];
h = view_hport[0];
show_debug_message("port: " + string(w) + "," + string(h));

w = browser_width;
h = browser_height;
show_debug_message("browser: " + string(w) + "," + string(h));


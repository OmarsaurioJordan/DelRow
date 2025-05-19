// arg0: ind de texto

with o_app {
    notificacion = argument0;
    reloj_notifi = 3;
    if argument0 == 412 {
        reloj_notifi *= 0.5;
    }
}


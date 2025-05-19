// ret: true si hay internet

var res = os_is_network_connected();
if !res {
    s_notificacion(103);
}
return res;


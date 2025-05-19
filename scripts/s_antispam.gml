// ret: true si puede proceder a la solicitud

var res = false;
with o_app {
    if antispam == 0 {
        antispam = 3; // segundos de espera
        res = true;
    }
}
return res;


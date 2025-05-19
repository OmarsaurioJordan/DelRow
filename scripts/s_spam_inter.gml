// ret: true si puede proceder con solicitud http

var res = false;
if s_antispam() {
    if s_internet() {
        res = true;
    }
}
return res;


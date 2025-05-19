gml_pragma("forceinline");
// arg0: id instancia que pregunta
// ret: true si tiene unidad amante asociada

if argument0.enlace != noone {
    if instance_exists(argument0.enlace) {
        return argument0.enlace.rol == m_rol_erotico;
    }
    else {
        argument0.enlace = noone;
        return false;
    }
}
else {
    return false;
}


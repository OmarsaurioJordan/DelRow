gml_pragma("forceinline");
// arg0: id de instancia muerta que hace su step

with argument0 {
    reloj_fin--;
    if reloj_fin <= 0 {
        instance_destroy();
    }
}


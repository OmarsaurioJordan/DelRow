gml_pragma("forceinline");
// arg0: id unidad que comercia

with argument0 {
    if enemigo.object_index == o_unidad {
        var cp = true;
        var aux = noone;
        var nobusco = true;
        if enemigo.arma { // tratar de quitar arma
            aux = s_blanco_aliado(id, rol, true);
            nobusco = false;
            if aux == noone {
                if !arma {
                    s_recopila_auto(zona, 0, 1, 0);
                    arma = true;
                    enemigo.arma = false;
                    cp = false;
                }
            }
            else {
                if !aux.arma {
                    s_recopila_auto(zona, 0, 1, 0);
                    aux.arma = true;
                    enemigo.arma = false;
                    cp = false;
                }
                else if !arma {
                    s_recopila_auto(zona, 0, 1, 0);
                    arma = true;
                    enemigo.arma = false;
                    cp = false;
                }
            }
        }
        if cp and enemigo.capa != 0 { // tratar de quitar capa
            if nobusco {
                aux = s_blanco_aliado(id, rol, true);
                nobusco = false;
            }
            if aux == noone {
                if capa < enemigo.capa {
                    s_recopila_auto(zona, 0, 0, 1);
                    capa = enemigo.capa;
                    enemigo.capa = 0;
                    cp = false;
                }
            }
            else {
                if aux.capa < enemigo.capa {
                    s_recopila_auto(zona, 0, 0, 1);
                    aux.capa = enemigo.capa;
                    enemigo.capa = 0;
                    cp = false;
                }
                else if capa < enemigo.capa {
                    s_recopila_auto(zona, 0, 0, 1);
                    capa = enemigo.capa;
                    enemigo.capa = 0;
                    cp = false;
                }
            }
        }
        if cp and enemigo.suerte > 0 { // tratar de quitar suerte
            if nobusco {
                aux = s_blanco_aliado(id, rol, true);
                nobusco = false;
            }
            if aux == noone {
                if suerte < enemigo.suerte and suerte >= 0 {
                    suerte = enemigo.suerte;
                    enemigo.suerte = 0;
                    cp = false;
                }
            }
            else {
                if aux.suerte < enemigo.suerte and aux.suerte >= 0 {
                    aux.suerte = enemigo.suerte;
                    enemigo.suerte = 0;
                    cp = false;
                }
                else if suerte < enemigo.suerte and suerte >= 0 {
                    suerte = enemigo.suerte;
                    enemigo.suerte = 0;
                    cp = false;
                }
            }
        }
        if cp and enemigo.comida > 0 { // tratar de quitar comida
            if nobusco {
                aux = s_blanco_aliado(id, rol, true);
            }
            if aux == noone {
                if comida < enemigo.comida {
                    comida = enemigo.comida;
                    enemigo.comida = 0;
                    cp = false;
                }
            }
            else {
                if aux.comida < enemigo.comida {
                    aux.comida = enemigo.comida;
                    enemigo.comida = 0;
                    cp = false;
                }
                else if comida < enemigo.comida {
                    comida = enemigo.comida;
                    enemigo.comida = 0;
                    cp = false;
                }
            }
        }
    }
}


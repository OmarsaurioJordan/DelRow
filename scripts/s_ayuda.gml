gml_pragma("forceinline");
// arg0: id de unidad que pregunta
// arg1: true si devolver el de menos vida
// ret: id de centro aliado en problemas o noone

var res = noone;
var ho = 0;
var vi = m_sim_vidacendef;
var vid;
with o_centro {
    if resist_act != 0 and !s_es_enemigo(argument0, id) {
        if hostigue > m_sim_hitostigue and hostigue > ho {
            ho = hostigue;
            res = id;
        }
        else if res == noone and argument1 {
            vid = resist_act / max(1, resist_tot);
            if vid < vi {
                vi = vid;
                res = id;
            }
        }
    }
}
return res;


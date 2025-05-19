gml_pragma("forceinline");
// arg0: ind de zona
// ret: id de centro

var res = noone;
with o_centro {
    if zona == argument0 {
        res = id;
        break;
    }
}
return res;


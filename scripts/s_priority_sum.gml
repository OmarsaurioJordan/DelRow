gml_pragma("forceinline");
// arg0: id de estructura ds_priority
// arg1: valor a modificar
// arg2: valor a ser sumado a la prioridad

var vv = ds_priority_find_priority(argument0, argument1);
if is_undefined(vv) {
    ds_priority_add(argument0, argument1, argument2);
}
else {
    ds_priority_change_priority(argument0, argument1, vv + argument2);
}


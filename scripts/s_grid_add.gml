gml_pragma("forceinline");
// arg0: id de la grid
// arg1: posicion x en mapa
// arg2: posicion y en mapa
// arg3: valor a sumar

var xx = clamp(round(argument1 / m_sim_celda), 0, gridx);
var yy = clamp(round(argument2 / m_sim_celda), 0, gridy);
return ds_grid_add(argument0, xx, yy, argument3);


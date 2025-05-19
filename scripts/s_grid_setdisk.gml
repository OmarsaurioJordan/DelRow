gml_pragma("forceinline");
// arg0: id de la grid
// arg1: posicion x en mapa
// arg2: posicion y en mapa
// arg3: valor a poner
// arg4: radio del disco

var xx = clamp(round(argument1 / m_sim_celda), 0, gridx);
var yy = clamp(round(argument2 / m_sim_celda), 0, gridy);
return ds_grid_set_disk(argument0, xx, yy, argument4 / m_sim_celda, argument3);


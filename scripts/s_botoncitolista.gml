// arg0: posicion en lista, 0 arriba
// arg1: ind de boton izquierdo
// arg2: ind de boton derecho

var aux;
aux = instance_create(525, 275 + argument0 * 50, o_boton);
aux.tipo = argument1;
aux.activo = false;
aux = instance_create(625, 275 + argument0 * 50, o_boton);
aux.tipo = argument2;
aux.activo = false;


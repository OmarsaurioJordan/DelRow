// calcula la rejilla de rumbo para alcanzar meta
// arg0: id instancia que tiene rejilla rumbo, y es meta

with argument0 {
    
    // 1. hacer copia de rejilla de obstaculos
    var viejmap = s_grid_get(gr_trafico, x, y);
    s_grid_set(gr_trafico, x, y, 0);
    
    // 2. hallar ruta en rejilla de peso
    var ax, ay, vx, vy, val;
    var peso = ds_grid_create(gridx + 1, gridy + 1);
    ds_grid_clear(peso, 999999999);
    // poner la meta en peso y tambien en la lista abierta
    s_grid_set(peso, x, y, 0);
    var lista = ds_queue_create();
    ax = clamp(round(x / m_sim_celda), 0, gridx);
    ay = clamp(round(y / m_sim_celda), 0, gridy);
    ds_queue_enqueue(lista, ax, ay);
    // ciclo para operar la lista abierta
    var veci = ds_queue_create();
    while !ds_queue_empty(lista) {
        // punto actual de la lista abierta
        ax = ds_queue_dequeue(lista);
        ay = ds_queue_dequeue(lista);
        // agregar vecinos
        if ay > 0 { // arriba
            ds_queue_enqueue(veci, ax, ay - 1);
        }
        if ay < gridy { // abajo
            ds_queue_enqueue(veci, ax, ay + 1);
        }
        if ax == 0 { // izquierda
            ds_queue_enqueue(veci, gridx, ay);
        }
        else {
            ds_queue_enqueue(veci, ax - 1, ay);
        }
        if ax == gridx { // derecha
            ds_queue_enqueue(veci, 0, ay);
        }
        else {
            ds_queue_enqueue(veci, ax + 1, ay);
        }
        // hacer ciclo para operar vecinos
        while !ds_queue_empty(veci) {
            // punto actual de la lista vecinos
            vx = ds_queue_dequeue(veci);
            vy = ds_queue_dequeue(veci);
            // continue si vecino en zona bloqueada (juego sin bloqueo)
            // calcular el costo para moverse
            val = ds_grid_get(gr_trafico, vx, vy) + ds_grid_get(peso, ax, ay);
            if val < ds_grid_get(peso, vx, vy) {
                ds_grid_set(peso, vx, vy, val);
                ds_queue_enqueue(lista, vx, vy);
            }
        }
    }
    // limpiar memoria
    ds_queue_destroy(veci);
    ds_queue_destroy(lista);
    
    // 3. calcular las direcciones de movimiento
    var menor, x1, y1, x2, y2, xd, yd, meni, mend;
    for (var w = 1; w < gridx; w++) {
        for (var h = 0; h <= gridy; h++) {
            x1 = w - 1;
            y1 = max(0, h - 1);
            x2 = w + 1;
            y2 = min(gridy, h + 1);
            menor = ds_grid_get_min(peso, x1, y1, x2, y2);
            xd = ds_grid_value_x(peso, x1, y1, x2, y2, menor);
            yd = ds_grid_value_y(peso, x1, y1, x2, y2, menor);
            ds_grid_set(rumbo, w, h, point_direction(w, h, xd, yd));
        }
    }
    // ahora para el lado izquierdo w=0
    for (var h = 0; h <= gridy; h++) {
        y1 = max(0, h - 1);
        y2 = min(gridy, h + 1);
        meni = ds_grid_get_min(peso, gridx, y1, gridx, y2);
        mend = ds_grid_get_min(peso, 0, y1, 1, y2);
        if meni < mend {
            ds_grid_set(rumbo, 0, h, 180);
        }
        else {
            xd = ds_grid_value_x(peso, 0, y1, 1, y2, mend);
            yd = ds_grid_value_y(peso, 0, y1, 1, y2, mend);
            ds_grid_set(rumbo, 0, h, point_direction(0, h, xd, yd));
        }
    }
    // ahora para el lado izquierdo w=gridx
    for (var h = 0; h <= gridy; h++) {
        y1 = max(0, h - 1);
        y2 = min(gridy, h + 1);
        meni = ds_grid_get_min(peso, gridx - 1, y1, gridx, y2);
        mend = ds_grid_get_min(peso, 0, y1, 0, y2);
        if meni > mend {
            ds_grid_set(rumbo, gridx, h, 0);
        }
        else {
            xd = ds_grid_value_x(peso, gridx - 1, y1, gridx, y2, meni);
            yd = ds_grid_value_y(peso, gridx - 1, y1, gridx, y2, meni);
            ds_grid_set(rumbo, gridx, h, point_direction(gridx, h, xd, yd));
        }
    }
    // limpiar memoria
    s_grid_set(gr_trafico, x, y, viejmap);
    ds_grid_destroy(peso);
}


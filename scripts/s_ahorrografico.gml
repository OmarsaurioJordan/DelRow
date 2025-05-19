gml_pragma("forceinline");
// hace visibles o invisibles a las unidades

if !secreto {
    var xx = view_xview[0] - 32;
    var yy = view_yview[0] - 32;
    var ww = xx + view_wview[0] + 64;
    var hh = yy + view_hview[0] + 128;
    with o_unidad {
        visible = point_in_rectangle(x, y, xx, yy, ww, hh);
    }
}


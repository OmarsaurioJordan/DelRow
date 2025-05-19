gml_pragma("forceinline");
// arg0: id instancia que se limita al mundo

with argument0 {
    var r = random(1);
    if x < 0 {
        x = room_width - r;
    }
    else if x > room_width {
        x = r;
    }
    y = clamp(y, r, room_height - r);
    depth = -y;
}


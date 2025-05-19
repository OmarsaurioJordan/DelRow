// mantiene la relaccion de aspecto

if irandom(29) == 0 {
    var r; // w/h
    if room == w_mundo {
        r = 4900 / 2350;
    }
    else {
        r = 700 / 1250;
    }
    var ww = window_get_width();
    var hh = window_get_height();
    var rr = ww / hh;
    if rr > r + 0.001 or rr < r - 0.001 {
        window_set_size(round(hh * r), round(hh));
        ww = window_get_width();
        if display_get_width() < ww {
            var e = display_get_width() / ww;
            window_set_size(round(ww * e), round(hh * e));
        }
        hh = window_get_height();
        if display_get_height() < hh {
            var e = display_get_height() / hh;
            window_set_size(round(ww * e), round(hh * e));
        }
    }
}


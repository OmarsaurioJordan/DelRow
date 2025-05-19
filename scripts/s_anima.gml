// arg0: id instancia a animar
// arg1: ind de la animacion actual
// arg2: periodo de la animacion
// arg3: amplitud del movimiento
// arg4: desfase del movimiento
// arg5: true si invertir

with argument0 {
    var ant = round((reloj_anima[argument1] / argument2) * 32);
    reloj_anima[argument1] += delta_time * 0.000001;
    while reloj_anima[argument1] >= argument2 {
        reloj_anima[argument1] -= argument2;
    }
    var new = round((reloj_anima[argument1] / argument2) * 32);
    if new != ant {
        var inv = 1;
        if argument5 { inv = -1; }
        switch new {
            case 0: anima[argument1] = argument4; break;
            case 1: anima[argument1] = argument4 + argument3 * 0.19509 * inv; break;
            case 2: anima[argument1] = argument4 + argument3 * 0.382683 * inv; break;
            case 3: anima[argument1] = argument4 + argument3 * 0.55557 * inv; break;
            case 4: anima[argument1] = argument4 + argument3 * 0.707107 * inv; break;
            case 5: anima[argument1] = argument4 + argument3 * 0.83147 * inv; break;
            case 6: anima[argument1] = argument4 + argument3 * 0.92388 * inv; break;
            case 7: anima[argument1] = argument4 + argument3 * 0.980785 * inv; break;
            case 8: anima[argument1] = argument4 + argument3 * inv; break;
            case 9: anima[argument1] = argument4 + argument3 * 0.980785 * inv; break;
            case 10: anima[argument1] = argument4 + argument3 * 0.92388 * inv; break;
            case 11: anima[argument1] = argument4 + argument3 * 0.83147 * inv; break;
            case 12: anima[argument1] = argument4 + argument3 * 0.707107 * inv; break;
            case 13: anima[argument1] = argument4 + argument3 * 0.55557 * inv; break;
            case 14: anima[argument1] = argument4 + argument3 * 0.382683 * inv; break;
            case 15: anima[argument1] = argument4 + argument3 * 0.19509 * inv; break;
            case 16: anima[argument1] = argument4; break;
            case 17: anima[argument1] = argument4 - argument3 * 0.19509 * inv; break;
            case 18: anima[argument1] = argument4 - argument3 * 0.382683 * inv; break;
            case 19: anima[argument1] = argument4 - argument3 * 0.55557 * inv; break;
            case 20: anima[argument1] = argument4 - argument3 * 0.707107 * inv; break;
            case 21: anima[argument1] = argument4 - argument3 * 0.83147 * inv; break;
            case 22: anima[argument1] = argument4 - argument3 * 0.92388 * inv; break;
            case 23: anima[argument1] = argument4 - argument3 * 0.980785 * inv; break;
            case 24: anima[argument1] = argument4 - argument3 * inv; break;
            case 25: anima[argument1] = argument4 - argument3 * 0.980785 * inv; break;
            case 26: anima[argument1] = argument4 - argument3 * 0.92388 * inv; break;
            case 27: anima[argument1] = argument4 - argument3 * 0.83147 * inv; break;
            case 28: anima[argument1] = argument4 - argument3 * 0.707107 * inv; break;
            case 29: anima[argument1] = argument4 - argument3 * 0.55557 * inv; break;
            case 30: anima[argument1] = argument4 - argument3 * 0.382683 * inv; break;
            case 31: anima[argument1] = argument4 - argument3 * 0.19509 * inv; break;
            case 32: anima[argument1] = argument4; break;
        }
    }
}


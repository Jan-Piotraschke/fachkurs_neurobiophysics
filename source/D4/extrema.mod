NEURON {
        SUFFIX extr     : for "extrema"
        RANGE vmax, vmin, tmax, tmin
}

ASSIGNED {
        v (millivolt)
        vmin (millivolt)
        tmin (ms)
        vmax (millivolt)
        tmax (ms)
}

INITIAL {
        vmin = v
        tmin = t
        vmax = v
        tmax = t
}

AFTER SOLVE {
        if (v < vmin) {
                vmin = v
                tmin = t
        }
        if (v > vmax) {
                vmax = v
                tmax = t
        }
}
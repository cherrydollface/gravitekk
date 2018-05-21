var i, j;
for (i = 0; i < surfaces_w; i += 1) {
    for (j = 0; j < surfaces_h; j += 1) {
        surface_free(surf[i, j]);
    }
}


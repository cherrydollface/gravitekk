var i, j;

// draw ground surface

for (i = 0; i < surfaces_w; i += 1) {
    for (j = 0; j < surfaces_h; j += 1) {
        if (global.gamestate != STATE_GAME) {
            shader_set(shader_grayscale);
            draw_surface(surf_ground[i, j], surface_width * i, surface_height * j);
            shader_reset();
        } else {
            draw_surface(surf_ground[i, j], surface_width * i, surface_height * j);
        }
//        draw_background(bg_statusbar2, 0, 480 -32)
    }
}

// draw blood and filth
draw_surface(bloodfilth_surf, 0, 0);

/*
// draw all other tiles
for (i = 0; i < surfaces_w; i += 1) {
    for (j = 0; j < surfaces_h; j += 1) {
        if (global.gamestate != STATE_GAME) {
            shader_set(shader_grayscale);
            draw_surface(surf[i, j], surface_width * i, surface_height * j);
            shader_reset();
        } else {
            draw_surface(surf[i, j], surface_width * i, surface_height * j);
        }
        draw_background(bg_statusbar2, 0, 480 -32)
    }
}
*/
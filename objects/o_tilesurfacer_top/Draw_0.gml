/// @description Insert description here
// You can write your code in this editor

// draw all other tiles
if(tsbottom != noone) {
with tsbottom do {
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
}
}
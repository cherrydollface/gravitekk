// Draw menu
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
draw_set_colour(c_white)

// Draw menu elements
var interval = SPACE_BETWEEN_POSITIONS
for(var i = 0; i < array_length_1d(global.menuElements); i++){
    draw_text(MENU_X_POSITION + interval, MENU_Y_POSITION + (i * interval), string(global.menuElements[i]))
    }


///Depricated
// Draw menu

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font0);
draw_set_colour(c_white);

// Draw menu elements
for(var i = 0; i < array_length_1d(global.menuElements); i++){
	//var spr = sprite_add(working_directory + "\Screens\Screen_1.png", 1, 0, 0, 0, 0);
	var sprite = scr_load_screenshot(i);
	draw_sprite(sprite, 0, x + SPACE_BETWEEN_POSITIONS, y + (i * SPACE_BETWEEN_POSITIONS));
    //draw_text(x + SPACE_BETWEEN_POSITIONS, y + (i * SPACE_BETWEEN_POSITIONS), string(global.savedGames[i]))
	
}
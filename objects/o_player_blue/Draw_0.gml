/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_sprite_ext(sprite_blue_beam, image_index, x, y, 0.5, 0.5, 0, c_white, 1);
if(global.selectedColor == 1) {
	draw_sprite(sprite_select_box, 0, x - CELLSIZE * 0.5, y - CELLSIZE * 0.5)
}

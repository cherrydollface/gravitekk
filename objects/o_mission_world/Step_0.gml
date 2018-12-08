/// @description Insert description here
// You can write your code in this editor


if (global.gamestate != STATE_GAME) return 0;

if gamepad_button_check_pressed(global.gamePadIndex, gp_padl) ||
gamepad_button_check_pressed(global.gamePadIndex, gp_padr) ||
gamepad_button_check_pressed(global.gamePadIndex, gp_padd) ||
gamepad_button_check_pressed(global.gamePadIndex, gp_padu) {
	global.selectedColor++;
	if global.selectedColor > 1 global.selectedColor = 0;
}

if gamepad_button_check_pressed(global.gamePadIndex, gp_start) {
	event_perform(ev_keypress, vk_escape);
}


/// @description Insert description here
// You can write your code in this editor
if gamepad_button_check_pressed(global.gamePadIndex, gp_start) {
	event_perform(ev_keypress, vk_escape);
}
/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.selectedColor != 1 return 0;

if gamepad_button_check_pressed(4, gp_shoulderr) {
	event_perform(ev_mouse, ev_left_button);
} else
if gamepad_button_check_pressed(4, gp_shoulderl) {
	event_perform(ev_mouse, ev_right_button);
}
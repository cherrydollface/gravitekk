/// @description Insert description here
// You can write your code in this editor
/*
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
   {
   if gamepad_is_connected(i) { global.gp[i] = true 
		   show_debug_message(gp_num)
	   } else global.gp[i] = false; 
   }
*/
if (global.gamestate != STATE_GAME) return 0;

if gamepad_button_check_pressed(4, gp_padl) ||
gamepad_button_check_pressed(4, gp_padr) ||
gamepad_button_check_pressed(4, gp_padd) ||
gamepad_button_check_pressed(4, gp_padu) {
	global.selectedColor++;
	if global.selectedColor > 1 global.selectedColor = 0;
}

if gamepad_button_check_pressed(4, gp_start) {
	event_perform(ev_keypress, vk_escape);
}


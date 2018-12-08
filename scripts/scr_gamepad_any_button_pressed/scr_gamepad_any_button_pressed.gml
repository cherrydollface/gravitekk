return max(gamepad_button_check_pressed(global.gamePadIndex, gp_face1), 
	gamepad_button_check_pressed(global.gamePadIndex, gp_face2),
	gamepad_button_check_pressed(global.gamePadIndex, gp_face3),
	gamepad_button_check_pressed(global.gamePadIndex, gp_face4));
	
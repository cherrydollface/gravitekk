/// @description Insert description here
// You can write your code in this editor
if(global.gamestate == STATE_PAUSE) return 0;

if gamepad_button_check_pressed(4, gp_shoulderrb) {
	destroying = true;
	
}


if (characters < message_length) { //if current character count is less than the amount in current message* 
   // hold = keyboard_check(ord("Z")); //hold is true or false if we hold 'Z' or not
	if gamepad_button_check_pressed(4, gp_face1) ||
	gamepad_button_check_pressed(4, gp_face2) ||
	gamepad_button_check_pressed(4, gp_face3) ||
	gamepad_button_check_pressed(4, gp_face4)	 {
	characters = message_length;
}   
    characters += increase * (1 + hold); //increase speed based on hold
    message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
	
} 
else { //if current character is more than the amount in the current message
    if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(4, gp_face1) ||
	gamepad_button_check_pressed(4, gp_face2) ||
	gamepad_button_check_pressed(4, gp_face3) ||
	gamepad_button_check_pressed(4, gp_face4)) 
	
	 { //if we press Z...
        if (message_current < message_end) { //if there are more messages left to show (0 -> 6, in our case)
            message_current += 1; //increase the message by 1
			scr_change_dialog_portait_if_needed();
            message_length = string_length(message[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        }
        else { //if our messages are done (we reach 6, in our case)...
			destroying = true;
            //instance_destroy(); //destroy the object
        }
    }
}


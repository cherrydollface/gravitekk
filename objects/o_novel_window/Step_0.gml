if(global.gamestate == STATE_PAUSE || global.gamestate == STATE_TRANSITION) return 0;
var bgTransition = false;
with(instance_find(o_bg, 0)) {
	if(state != BGSTATE_IDLE) bgTransition = true;
}

if(bgTransition) return 0;

var userInput = (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter) ||
   gamepad_button_check_pressed(4, gp_face1) ||
	gamepad_button_check_pressed(4, gp_face2) ||
	gamepad_button_check_pressed(4, gp_face3) ||
	gamepad_button_check_pressed(4, gp_face4)
);

if (characters < message_length && userInput) {
	characters = message_length;
	message_draw = string_copy(curmsg, 0, characters); //copy string to current character
	return 0;
}

if (characters < message_length) { //if current character count is less than the amount in current message* 
    hold = keyboard_check(ord("Z")); //hold is true or false if we hold 'Z' or not
    characters += increase * (1 + hold); //increase speed based on hold
    message_draw = string_copy(curmsg, 0, characters); //copy string to current character
} 

else { //if current character is more than the amount in the current message
    if (userInput) { //if we press Z...
        if (message_current <= message_end) { //if there are more messages left to show (0 -> 6, in our case)           
            if(ds_queue_size(messages) == 0) {
				return 0;
			}
			
			scr_message_process_loop();;
			
            message_length = string_length(curmsg);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text            
        }      
    }
}


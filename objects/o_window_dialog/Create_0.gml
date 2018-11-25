/// @description Insert description here
// You can write your code in this editor
event_inherited();

lookup_width_cells = 10;
lookup_height_cells = 2;

// create skip button and portait
// get messager text from mission singleton
var localMessages;
with instance_find(o_mission_world, 0) do { 
	localMessages = script_execute(dialog_message_getter);
}

portait = instance_create_layer(x + (lookup_width_cells + 1) *CELLSIZE, y, LAYER_DEFAULT_UI, o_dialog_portraiit)
skipButton = instance_create_layer(x, y, LAYER_DEFAULT_UI, o_skip_button);
skipButton.tag_id = self;

var size = ds_queue_size(localMessages);
for(var i = 0; i < size; i++) {
	message[i] = ds_queue_dequeue(localMessages);
}

scr_change_dialog_portait_if_needed();
message_length = string_length(message[message_current]); //get the number of characters in the first message
message_end = array_length_1d(message) - 1;

destroying = false;
event_inherited();
depth = -100;
global.gamestate = STATE_CUTSCENE;
message = undefined;

var world = instance_find(o_mission_world, 0);

lookup_width_cells = 10;
lookup_height_cells = 2;

load_localization_file("chapters.json")	;
script_execute(world.messager_script);

// that is super bad practice, man
if (object_get_name(object_index) == "o_window") {
	portait = instance_create_layer(x + (lookup_width_cells + 1) *CELLSIZE, y, LAYER_DEFAULT_UI, o_dialog_portraiit)
	skipButton = instance_create_layer(x, y, LAYER_DEFAULT_UI, o_skip_button);
	skipButton.tag_id = self;
}

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

if(message == undefined) {
	message[0] = "Placeholder";
}

message_length = string_length(message[message_current]); //get the number of characters in the first message
message_end = array_length_1d(message) - 1;

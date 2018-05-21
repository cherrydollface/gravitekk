depth = -100;
global.gamestate = STATE_CUTSCENE;

var world = instance_find(o_mission_world, 0);

lookup_width_cells = 10;
lookup_height_cells = 2;

script_execute(world.messager_script);

portait = instance_create(x + (lookup_width_cells + 1) *CELLSIZE, y, o_dialog_portraiit)

skipButton = instance_create(x, y, o_skip_button);
skipButton.tag_id = self;


message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 6; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //get the number of characters in the first message


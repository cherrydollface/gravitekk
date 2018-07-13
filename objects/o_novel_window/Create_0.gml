lookup_width_cells = 17;
lookup_height_cells = 2;

messages = ds_queue_create();

var world = instance_find(o_novel_world, 0);
script_execute(world.messager_script);

instance_create_layer(x + CELLSIZE * 0.5, y - CELLSIZE * 0.5, "UI" ,o_char_name_panel);

message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_current = 0;
message_end = ds_queue_size(messages) - 1;
scr_message_process_loop();

message_length = string_length(curmsg); //get the number of characters in the first message


messages = ds_queue_create();
ds_queue_enqueue(messages, "Chapter 1. Arrival");

var world = instance_find(o_novel_world, 0);
script_execute(world.messager_script);

message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_current = 0;
message_end = ds_queue_size(messages) - 1;
curmsg = ds_queue_dequeue(messages);
message_length = string_length(curmsg); //get the number of characters in the first message


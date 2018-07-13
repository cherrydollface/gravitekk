var world = instance_find(o_novel_world, 0);  
var messageIsNotDisplayable = false;
do {
    if (ds_queue_size(messages) == 0) {
        curmsg = "";
        break;
    }
    message_current += 1; //increase the message by 1
    curmsg = ds_queue_dequeue(messages);
    messageIsNotDisplayable = string_pos("<", curmsg) != 0 var msg = curmsg;
    if (messageIsNotDisplayable) {
        with instance_find(o_char_name_panel, 0)
        {
            charName = msg;
        }
    }
    if (curmsg = NOVELL_TRIGGER_SERVICE_MESSAGE) {
        script_execute(world.event_handler_script);
        messageIsNotDisplayable = true;
    }
}
until(!messageIsNotDisplayable) // skip service placeholders

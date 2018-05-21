global.gamestate = STATE_GAME;
world = instance_find(o_novel_world, 0);
world.messager_script = scr_chapter1_messager_init;
world.event_handler_script = scr_chapter1_event_handler;
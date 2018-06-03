global.gamestate = STATE_GAME;
messager_script = scr_mission_1
sequence_index = -1;

// create all the helper objects
tilesurfacer = instance_create_layer(0, 0, LAYER_SERVICE_TILESURFACER, o_tilesurfacer);
pager = instance_create_layer(0, 0, LAYER_DEFAULT_OBJECT, o_pager);
bloodsack = instance_create_layer(0, 0, LAYER_DEFAULT_OBJECT, o_bloodsack);
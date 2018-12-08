global.gamestate = STATE_GAME;
global.energy = 0;
global.selectedColor = 0;

messager_script = scr_mission_1
sequence_index = -1;

// create all the helper objects
var tilesurfacer = instance_create_layer(0, 0, LAYER_SERVICE_TILESURFACER, o_tilesurfacer);
with(instance_create_layer(0, 0, LAYER_SERVICE_TILESURFACER_TOP, o_tilesurfacer_top)) {
	tsbottom = tilesurfacer;
}
pager = instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_pager);
bloodsack = instance_create_layer(0, 0, LAYER_DEFAULT_OBJECT, o_bloodsack);

dialog_message_getter = scr_placeholder;


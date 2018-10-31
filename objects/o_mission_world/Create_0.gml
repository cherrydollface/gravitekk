global.gamestate = STATE_GAME;
global.energy = 0;
messager_script = scr_mission_1
sequence_index = -1;

// create all the helper objects
var tilesurfacer = instance_create_layer(0, 0, LAYER_SERVICE_TILESURFACER, o_tilesurfacer);
with(instance_create_layer(0, 0, "TileSurfacerTop", o_tilesurfacer_top)) {
	tsbottom = tilesurfacer;
}
pager = instance_create_layer(0, 0, LAYER_DEFAULT_OBJECT, o_pager);
bloodsack = instance_create_layer(0, 0, LAYER_DEFAULT_OBJECT, o_bloodsack);
mainmenu = instance_create_layer(0, 0, LAYER_DEFAULT_UI, o_menu_new);

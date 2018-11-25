global.gamestate = STATE_CUTSCENE;
var world = instance_find(o_mission_world, 0);
world.sequence_index = 100;
with instance_create_layer(200, 200, LAYER_DEFAULT_UI, o_chapter_header) do {
	message_draw = get_localized_string("MissionAccomplished");
}
instance_destroy(self);

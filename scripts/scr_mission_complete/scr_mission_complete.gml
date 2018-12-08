global.gamestate = STATE_CUTSCENE;
var world = instance_find(o_mission_world, 0);
world.sequence_index = 100;
with instance_create_layer(200, 200, LAYER_DEFAULT_UI, o_chapter_header) do {
	message[0] = get_localized_string("MissionAccomplished");
	message_length = string_length(message[message_current]); 
	message_end = array_length_1d(message) - 1;

}
instance_destroy(self);

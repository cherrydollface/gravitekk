global.gamestate = STATE_CUTSCENE;
var world = instance_find(o_mission_world, 0);
world.sequence_index = 100;
with instance_create_layer(200, 200, "UI", o_chapter_header) do {
	message_draw = "Миссия выполнена!";
}
instance_destroy(self);

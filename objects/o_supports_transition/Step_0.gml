/// @description Insert description here
// You can write your code in this editor


if (object_get_name( id.object_index) == "o_novel_window" ) { // we don't need transitions for main o_window
	return 0;
}

if (image_alpha < 1 && !destroying) { image_alpha += 0.05 } else {
//	global.gamestate = STATE_GAME;
}
if(destroying) {
	if (image_alpha > 0) { image_alpha -= 0.05 } else {
		instance_destroy(self);
	}
}
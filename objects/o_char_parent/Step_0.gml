/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 1 && !destroying) { image_alpha += 0.05 } else {
	global.gamestate = STATE_GAME;
}
if(destroying) {
	if (image_alpha > 0) { image_alpha -= 0.05 } else {
		instance_destroy(self);
	}
}
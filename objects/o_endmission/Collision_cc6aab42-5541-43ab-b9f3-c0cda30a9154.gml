/// @description Insert description here
// You can write your code in this editor
if(global.gamestate == STATE_GAME) {
	scr_mission_complete();
	instance_destroy(self);
}

/// @description Insert description here
// You can write your code in this editor
if(other.moving != 0) {
	return 0;
}
var instanceType = o_gravipad;
switch(lotag) {
	case DOOR_OPEN: {
		instanceType = o_gravipad
		break;
	}
}
script_execute(action, instanceType, hitag);
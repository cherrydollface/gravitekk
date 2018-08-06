/// @description Insert description here
// You can write your code in this editor
if(path_index != -1) {
}

if( abs(rotation) < 90 && rotation_delta != 0) {
	rotation = rotation + rotation_delta * 5;	
	image_angle = image_angle + rotation_delta * 5;
} else {
	rotation = 0;
	rotation_delta = 0;
}

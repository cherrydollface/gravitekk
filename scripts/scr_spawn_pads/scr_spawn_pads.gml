switch (argument0) {
	case vk_left:
		instance_create_layer(x, y, LAYER_DEFAULT_OBJECT, o_gravipad_green);
		instance_create_layer(x + CELLSIZE, y, LAYER_DEFAULT_OBJECT, o_gravipad_blue);
		break;
	case vk_right:
		instance_create_layer(x, y, LAYER_DEFAULT_OBJECT, o_gravipad_green);
		instance_create_layer(x - CELLSIZE, y, LAYER_DEFAULT_OBJECT, o_gravipad_blue);
		break;
	default: 
		break;
}
var world = instance_find(o_novel_world, 0);
switch(world.worldEventCount) {
	case 0:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_autumn_park;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 1:
		instance_create_layer( global.charCenterX, global.charCenterY, LAYER_CHARACTERS, o_char_agatha );
		break;
	case 2:
		with instance_find(o_char_agatha,0) do 
		{
			destroying = true;
			global.gamestate = STATE_TRANSITION
		}
		break;
	case 3:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_park_agatha_worms;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 4:
		var bg = instance_find(o_bg, 0);
		bg.state = BGSTATE_SCROLL;
		break;
	case 5:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_park_agatha_hug;
		bg.state = BGSTATE_FADE_OUT;
		break;
	default : break;
}
world.worldEventCount++;

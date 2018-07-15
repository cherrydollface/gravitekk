var world = instance_find(o_novel_world, 0);
switch(world.worldEventCount) {
	case 0:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_briefing_hall;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 1:
		instance_create_layer( global.charCenterX, global.charCenterY, LAYER_CHARACTERS, o_char_artemonovich );
		break;
	case 2:
		scr_char_move_left(o_char_artemonovich);
		break;
	case 3:
		instance_create_layer( global.charRightX, global.charRightY, LAYER_CHARACTERS, o_char_chereptsov );
		break;
	case 4:
		scr_char_set_active(instance_find(o_char_chereptsov, 0));
		break;
	case 5:
		with instance_find(o_char_artemonovich,0) do 
		{
			destroying = true;
			global.gamestate = STATE_TRANSITION
		}
		break;
	case 6:
		scr_char_move_left(o_char_chereptsov);
		break;
	case 7:
		with instance_find(o_char_chereptsov,0) do 
		{
			destroying = true;
			global.gamestate = STATE_TRANSITION
		}
		break;
	case 8:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_main_corridor;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 9:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_cafeterium;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 10:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_vending_machine;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 11:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_cafeterium;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 12:
		instance_create_layer( global.charRightX, global.charRightY, LAYER_CHARACTERS, o_char_eric );
		break;
	case 13:
		instance_create_layer( global.charLeftX, global.charLeftY, LAYER_CHARACTERS, o_char_nancy );
		break;
	case 14:
		scr_char_set_active(instance_find(o_char_eric, 0));
		break;
	case 15:
		scr_char_set_active(instance_find(o_char_nancy, 0));
		break;
	case 16:
		scr_char_set_active(instance_find(o_char_eric, 0));
		break;
	case 17:
		scr_char_set_active(instance_find(o_char_nancy, 0));
		break;
	case 18:
		scr_char_set_active(instance_find(o_char_eric, 0));
		break;
	case 19:
		with instance_find(o_char_eric,0) do 
		{
			destroying = true;
			global.gamestate = STATE_TRANSITION
		}
		break;
	case 20:
		with instance_find(o_char_nancy,0) do 
		{
			destroying = true;
			global.gamestate = STATE_TRANSITION
		}
		break;
	case 21:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_transport_pad;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 22:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_way_to_hangars;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 23:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_palm;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 24:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_way_to_hangars;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 25:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_hangars;
		bg.state = BGSTATE_FADE_OUT;
		break;
	case 26:
		var bg = instance_find(o_bg, 0);
		bg.new_bg = bg_cockpit;
		bg.state = BGSTATE_FADE_OUT;
		break;
	default : break;
}
world.worldEventCount++;

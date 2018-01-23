switch(argument0) {
case 1:
	var bg = instance_find(o_bg, 0);
	bg.new_bg = crap;
	bg.state = BGSTATE_FADE_OUT;
	break;
default : break;
}

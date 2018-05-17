switch(argument0) {
case 0:
var bg = instance_find(o_bg, 0);
bg.new_bg = bg_worm;
bg.state = BGSTATE_FADE_OUT;
break;
default : break;
}

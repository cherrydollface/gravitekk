draw_set_colour(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

if(cur_bg = -1 && state == BGSTATE_FADE_OUT && new_bg != -1) {
	cur_bg = new_bg;
	state = BGSTATE_FADE_IN;
	a = 0;
} 

if(cur_bg = -1) {
	return 0;
}

if(state == BGSTATE_IDLE) {
    draw_sprite(cur_bg, 0, 0, 0);
} else {
    if(state == BGSTATE_FADE_OUT) {
        a = clamp(a - (fade * 0.025),0,1); 
     //   draw_set_alpha(0.3);
        draw_sprite_ext(cur_bg, 0, 0, 0, 1, 1, 0, c_white, a);   
       // draw_set_alpha(1); 
        if(a == 0) {
           state = BGSTATE_FADE_IN; 
           cur_bg = new_bg;
        }      
    } else {
        if(state == BGSTATE_FADE_IN) {
            a = clamp(a + (fade * 0.025),0,1); 
            draw_set_alpha(a);
            draw_sprite(cur_bg, 0, 0, 0);   
            draw_set_alpha(1);
            if (a == 1) {
                state = BGSTATE_IDLE;
            }        
        }
    }
}


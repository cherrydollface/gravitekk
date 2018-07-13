if(cur_bg = -1 && state == BGSTATE_FADE_OUT && new_bg != -1) {
	cur_bg = new_bg;
	state = BGSTATE_FADE_IN;
	a = 0;
} 

if(cur_bg = -1) {
	return 0;
}

if(state == BGSTATE_IDLE) {
    draw_background(cur_bg, 0, 0);
} else {
    if(state == BGSTATE_FADE_OUT) {
        a = clamp(a - (fade * 0.025),0,1); 
        draw_set_alpha(a);
        draw_background(cur_bg, 0, 0);   
        draw_set_alpha(1); 
        if(a == 0) {
           state = BGSTATE_FADE_IN; 
           cur_bg = new_bg;
        }      
    } else {
        if(state == BGSTATE_FADE_IN) {
            a = clamp(a + (fade * 0.025),0,1); 
            draw_set_alpha(a);
            draw_background(cur_bg, 0, 0);   
            draw_set_alpha(1);
            if (a == 1) {
                state = BGSTATE_IDLE;
            }        
        }
    }
}


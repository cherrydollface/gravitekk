///smoothview_step()
//
// Script:      Handles the movement of the view
// Date:        2017-02-08
// Copyright:   PeliStar

// Initialise the movement by pressing
if (mouse_check_button_pressed(mb_left))
{
    //Start position for dragging
    drag_speed = 0;
    if (horizontal == 1)
        drag = mouse_x;
    else
        drag = mouse_y;
}

// Scrolling horizontally
if (horizontal == 1)
{
    if (mouse_check_button(mb_left))
    {
        //Drag
        drag_speed = (drag - mouse_x) * speed_modifier;
        view_xview += drag_speed;
    }

    if (abs(drag_speed) > 0)
    {
        //Drag slow down effect
        view_xview += drag_speed;
        if (view_xview <= 0 || view_xview >= (room_width-view_wview)) then drag_speed = 0;
        drag_speed += (-drag_speed*smooth);
    }

    //Keep the screen within the room
    view_xview = max(0, min(view_xview, room_width - view_wview));
}
else
{
    if (mouse_check_button(mb_left))
    {
        //Drag
        drag_speed = (drag - mouse_y) * speed_modifier;
        view_yview += drag_speed;
    }

    if (abs(drag_speed) > 0)
    {
        //Drag slow down effect
        view_yview += drag_speed;
        if (view_yview <= 0 || view_yview >= (room_height-view_hview)) then drag_speed = 0;
        drag_speed += (-drag_speed*smooth);
    }

    //Keep the screen within the room
    view_yview = max(0, min(view_yview, room_height - view_hview));
}


zy = camera_get_view_y(view_camera[0]);



draw_set_color(c_white);
draw_text(850,zy+500,"Your score was: " + string(obj_scorekeeper.itemsPickedUp*100));


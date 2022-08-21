//draw victory menu

//box
draw_set_color(c_navy);
draw_roundrect(view_left(),view_top(),view_left()+view_width(),view_top()+100,0);//box

//text
draw_set_color(c_white);
draw_text(view_width()/2-110,15,string_hash_to_newline("Victory!"));
draw_text(view_left()+view_width()-60,view_top()+80,string_hash_to_newline("Press Z"));


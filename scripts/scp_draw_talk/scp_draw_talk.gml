function scp_draw_talk(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	//run in draw event of object with talk
	//set with to obj_control
	//argument0=face gfx - no ""
	//argument1-5=text line - has ""
	//face is right aligned

	if(global.message_visible==1){
	    draw_set_color(c_navy)//dark blue 10485760 
	    draw_roundrect(view_left(),view_top(),view_left()+view_width(),view_top()+100,0);//draw text box
	    draw_sprite(argument0,0,view_left()+view_width()-75,view_top()+25);//draw face

	    font_size=10;//set font size to 12
	    draw_set_color(c_white);
	    draw_text(view_left()+5,view_top()+5,string_hash_to_newline(argument1));//text line1
	    draw_text(view_left()+5,view_top()+20,string_hash_to_newline(argument2));//text line2
	    draw_text(view_left()+5,view_top()+35,string_hash_to_newline(argument3));//text line3
	    draw_text(view_left()+5,view_top()+50,string_hash_to_newline(argument4));//text line4

	    //this must be called from code, they cannot be used in drag and drop
	    draw_text(view_left()+5,view_top()+65,string_hash_to_newline(argument5));//text line5
	    draw_text(view_left()+5,view_top()+80,string_hash_to_newline(argument6));//text line6
	}



}

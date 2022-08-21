function scp_draw_question(argument0, argument1, argument2, argument3, argument4, argument5) {
	//run in draw event of object with talk
	//set with to obj_control
	//argument0 = face gfx - no ""
	//argument1 = question - has ""
	//argument2-5 = 4 choices -has ""
	//face is right aligned

	if(global.question_visible==1){//if question is shown
	    if(global.question_mode>global.question_mode_max-1){global.question_mode=0;}//loop bottem to top
	    if(global.question_mode<0){global.question_mode=global.question_mode_max-1;}//loop top to bottem
    
	    draw_set_color(c_navy);//dark blue bkg
	    draw_roundrect(view_left(),view_top(),view_left()+view_width(),view_top()+100,0);//draw text box
	    draw_sprite(argument0,0,view_left()+view_width()-75,view_top()+25);//draw face
    
	    draw_set_color(c_white);
	    if(global.question_mode==0){draw_rectangle(view_left()+3,view_top()+18+5,view_left()+view_width()-100,view_top()+33+5,1);}
	    if(global.question_mode==1){draw_rectangle(view_left()+3,view_top()+33+5,view_left()+view_width()-100,view_top()+47+5,1);}
	    if(global.question_mode==2){draw_rectangle(view_left()+3,view_top()+47+5,view_left()+view_width()-100,view_top()+62+5,1);}
	    if(global.question_mode==3){draw_rectangle(view_left()+3,view_top()+62+5,view_left()+view_width()-100,view_top()+77+5,1);}
    
	    draw_set_color(c_white);
	    font_size=10//set font size to 12
	    draw_text(view_left()+5,view_top()+5,string_hash_to_newline(argument1));//question
	    draw_text(view_left()+5,view_top()+20,string_hash_to_newline(argument2));//choice1
	    draw_text(view_left()+5,view_top()+35,string_hash_to_newline(argument3));//choice2
	    draw_text(view_left()+5,view_top()+50,string_hash_to_newline(argument4));//choice3
	    draw_text(view_left()+5,view_top()+65,string_hash_to_newline(argument5));//choice4
	}
}

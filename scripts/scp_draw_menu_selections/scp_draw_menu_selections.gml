function scp_draw_menu_selections() {
	//draw menu selectors
	//run in draw event of menu control
	font_color=c_white//white font

	//draw selector for menu area
	if(global.menu_area==0){
	    if(global.menu_mode==0){draw_text(view_left()+40,view_top()+30,string_hash_to_newline(">"));}
	    if(global.menu_mode==1){draw_text(view_left()+40,view_top()+60,string_hash_to_newline(">"));}
	    if(global.menu_mode==2){draw_text(view_left()+40,view_top()+90,string_hash_to_newline(">"));}
	    if(global.menu_mode==3){draw_text(view_left()+40,view_top()+120,string_hash_to_newline(">"));}
	    if(global.menu_mode==4){draw_text(view_left()+40,view_top()+150,string_hash_to_newline(">"));}
	    if(global.menu_mode==5){draw_text(view_left()+40,view_top()+180,string_hash_to_newline(">"));}
	    if(global.menu_mode==6){draw_text(view_left()+40,view_top()+210,string_hash_to_newline(">"));}
	    if(global.menu_mode==7){draw_text(view_left()+40,view_top()+240,string_hash_to_newline(">"));}
	    if(global.menu_mode==8){draw_text(view_left()+40,view_top()+270,string_hash_to_newline(">"));}
	    if(global.menu_mode==9){draw_text(view_left()+40,view_top()+300,string_hash_to_newline(">"));}
	}
	//draw selector for item/key/equip area
	if(global.menu_area==1||global.menu_area==6||global.menu_area==7){
	    if(global.menu_mode==0){draw_text(view_left()+180,view_top()+70,string_hash_to_newline(">"));}
	    if(global.menu_mode==1){draw_text(view_left()+180,view_top()+90,string_hash_to_newline(">"));}
	    if(global.menu_mode==2){draw_text(view_left()+180,view_top()+110,string_hash_to_newline(">"));}
	    if(global.menu_mode==3){draw_text(view_left()+180,view_top()+130,string_hash_to_newline(">"));}
	    if(global.menu_mode==4){draw_text(view_left()+180,view_top()+150,string_hash_to_newline(">"));}
	    if(global.menu_mode==5){draw_text(view_left()+180,view_top()+170,string_hash_to_newline(">"));}
	    if(global.menu_mode==6){draw_text(view_left()+180,view_top()+190,string_hash_to_newline(">"));}
	    if(global.menu_mode==7){draw_text(view_left()+180,view_top()+210,string_hash_to_newline(">"));}
	    if(global.menu_mode==8){draw_text(view_left()+180,view_top()+230,string_hash_to_newline(">"));}
	    if(global.menu_mode==9){draw_text(view_left()+180,view_top()+250,string_hash_to_newline(">"));}
	    if(global.menu_mode==10){draw_text(view_left()+430,view_top()+70,string_hash_to_newline(">"));}
	    if(global.menu_mode==11){draw_text(view_left()+430,view_top()+90,string_hash_to_newline(">"));}
	    if(global.menu_mode==12){draw_text(view_left()+430,view_top()+110,string_hash_to_newline(">"));}
	    if(global.menu_mode==13){draw_text(view_left()+430,view_top()+130,string_hash_to_newline(">"));}
	    if(global.menu_mode==14){draw_text(view_left()+430,view_top()+150,string_hash_to_newline(">"));}
	    if(global.menu_mode==15){draw_text(view_left()+430,view_top()+170,string_hash_to_newline(">"));}
	    if(global.menu_mode==16){draw_text(view_left()+430,view_top()+190,string_hash_to_newline(">"));}
	    if(global.menu_mode==17){draw_text(view_left()+430,view_top()+210,string_hash_to_newline(">"));}
	    if(global.menu_mode==18){draw_text(view_left()+430,view_top()+230,string_hash_to_newline(">"));}
	    if(global.menu_mode==19){draw_text(view_left()+430,view_top()+250,string_hash_to_newline(">"));}
	}
	//draw selector for ability area
	if(global.menu_area==4){
	    if(global.menu_mode==0){draw_text(view_left()+180,view_top()+70,string_hash_to_newline(">"));}
	    if(global.menu_mode==1){draw_text(view_left()+180,view_top()+90,string_hash_to_newline(">"));}
	    if(global.menu_mode==2){draw_text(view_left()+180,view_top()+110,string_hash_to_newline(">"));}
	    if(global.menu_mode==3){draw_text(view_left()+180,view_top()+130,string_hash_to_newline(">"));}
	    if(global.menu_mode==4){draw_text(view_left()+180,view_top()+150,string_hash_to_newline(">"));}
	    if(global.menu_mode==5){draw_text(view_left()+180,view_top()+170,string_hash_to_newline(">"));}
	    if(global.menu_mode==6){draw_text(view_left()+180,view_top()+190,string_hash_to_newline(">"));}
	    if(global.menu_mode==7){draw_text(view_left()+180,view_top()+210,string_hash_to_newline(">"));}
	    if(global.menu_mode==8){draw_text(view_left()+180,view_top()+230,string_hash_to_newline(">"));}
	    if(global.menu_mode==9){draw_text(view_left()+180,view_top()+250,string_hash_to_newline(">"));}
	}
	//draw selector for item/ability/ability effect user area
	if(global.menu_area==2||global.menu_area==3||global.menu_area==5){
	    if(global.menu_mode==0){draw_text(view_left()+180,view_top()+75,string_hash_to_newline(">"));}
	    if(global.menu_mode==1){draw_text(view_left()+430,view_top()+75,string_hash_to_newline(">"));}
	    if(global.menu_mode==2){draw_text(view_left()+180,view_top()+275,string_hash_to_newline(">"));}
	    if(global.menu_mode==3){draw_text(view_left()+430,view_top()+275,string_hash_to_newline(">"));}
	}



}

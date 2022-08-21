function scp_draw_shop_selections() {
	//draw shop selectors
	//run in draw event of shop keeper

	//draw selector for buy/sell area
	draw_set_color(c_white);
	if(global.shop_area==0){//main area
	    if(global.shop_mode==0){draw_text(view_left()+40,view_top()+30,string_hash_to_newline(">"));}//buy
	    if(global.shop_mode==1){draw_text(view_left()+40,view_top()+60,string_hash_to_newline(">"));}//sell
	    if(global.shop_mode==2){draw_text(view_left()+40,view_top()+90,string_hash_to_newline(">"));}//exit
	}

	//draw selector for item buy/sell area
	if(global.shop_area==1||global.shop_area==2){//1=buy area 2=sell area
	    if(global.shop_mode==0){draw_text(view_left()+180,view_top()+70,string_hash_to_newline(">"));}
	    if(global.shop_mode==1){draw_text(view_left()+180,view_top()+90,string_hash_to_newline(">"));}
	    if(global.shop_mode==2){draw_text(view_left()+180,view_top()+110,string_hash_to_newline(">"));}
	    if(global.shop_mode==3){draw_text(view_left()+180,view_top()+130,string_hash_to_newline(">"));}
	    if(global.shop_mode==4){draw_text(view_left()+180,view_top()+150,string_hash_to_newline(">"));}
	    if(global.shop_mode==5){draw_text(view_left()+180,view_top()+170,string_hash_to_newline(">"));}
	    if(global.shop_mode==6){draw_text(view_left()+180,view_top()+190,string_hash_to_newline(">"));}
	    if(global.shop_mode==7){draw_text(view_left()+180,view_top()+210,string_hash_to_newline(">"));}
	    if(global.shop_mode==8){draw_text(view_left()+180,view_top()+230,string_hash_to_newline(">"));}
	    if(global.shop_mode==9){draw_text(view_left()+180,view_top()+250,string_hash_to_newline(">"));}
	    if(global.shop_mode==10){draw_text(view_left()+430,view_top()+70,string_hash_to_newline(">"));}
	    if(global.shop_mode==11){draw_text(view_left()+430,view_top()+90,string_hash_to_newline(">"));}
	    if(global.shop_mode==12){draw_text(view_left()+430,view_top()+110,string_hash_to_newline(">"));}
	    if(global.shop_mode==13){draw_text(view_left()+430,view_top()+130,string_hash_to_newline(">"));}
	    if(global.shop_mode==14){draw_text(view_left()+430,view_top()+150,string_hash_to_newline(">"));}
	    if(global.shop_mode==15){draw_text(view_left()+430,view_top()+170,string_hash_to_newline(">"));}
	    if(global.shop_mode==16){draw_text(view_left()+430,view_top()+190,string_hash_to_newline(">"));}
	    if(global.shop_mode==17){draw_text(view_left()+430,view_top()+210,string_hash_to_newline(">"));}
	    if(global.shop_mode==18){draw_text(view_left()+430,view_top()+230,string_hash_to_newline(">"));}
	    if(global.shop_mode==19){draw_text(view_left()+430,view_top()+250,string_hash_to_newline(">"));}
	}



}

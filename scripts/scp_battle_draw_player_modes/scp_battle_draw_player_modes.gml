function scp_battle_draw_player_modes() {
	//draw player mode + selector + selected
	//draw battle modes - attack, escape, ect
	font_color=c_white;//font color
	font_size=10;//font size
	if(rdy==1){//ifm this turn
	draw_text(view_left()+30,view_top()+view_height()-130,string_hash_to_newline("Attack"));
	draw_text(view_left()+30,view_top()+view_height()-110,string_hash_to_newline("Ability"));
	draw_text(view_left()+30,view_top()+view_height()-90,string_hash_to_newline("Item"));
	draw_text(view_left()+30,view_top()+view_height()-70,string_hash_to_newline("Defend"));
	draw_text(view_left()+30,view_top()+view_height()-50,string_hash_to_newline("Wait"));
	draw_text(view_left()+30,view_top()+view_height()-30,string_hash_to_newline("Escape"));
	}
	/////////////////////////////////////////////////////////////
	//draw selector - position of >
	font_color=c_white//white font
	font_size=10;//font size
	if(rdy==1){
	    if(global.battle_area==0){//main battle mode
	        if(global.battle_mode==0){draw_text(view_left()+20,view_top()+view_height()-130,string_hash_to_newline(">"));}
	        if(global.battle_mode==1){draw_text(view_left()+20,view_top()+view_height()-110,string_hash_to_newline(">"));}
	        if(global.battle_mode==2){draw_text(view_left()+20,view_top()+view_height()-90,string_hash_to_newline(">"));}
	        if(global.battle_mode==3){draw_text(view_left()+20,view_top()+view_height()-70,string_hash_to_newline(">"));}
	        if(global.battle_mode==4){draw_text(view_left()+20,view_top()+view_height()-50,string_hash_to_newline(">"));}
	        if(global.battle_mode==5){draw_text(view_left()+20,view_top()+view_height()-30,string_hash_to_newline(">"));}
	    }
	    if(global.battle_area==1||global.battle_area==3||global.battle_area==5){//attack/ability/item target mode
	        if(global.battle_mode==0){with(obj_p1_battle){draw_text(x-sprite_width/2,y,string_hash_to_newline(">"));}}
	        if(global.battle_mode==1){with(obj_p2_battle){draw_text(x-sprite_width/2,y,string_hash_to_newline(">"));}}
	        if(global.battle_mode==2){with(obj_p3_battle){draw_text(x-sprite_width/2,y,string_hash_to_newline(">"));}}
	        if(global.battle_mode==3){with(obj_p4_battle){draw_text(x-sprite_width/2,y,string_hash_to_newline(">"));}}
	        if(global.battle_mode==4){with(obj_ene1_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
	        if(global.battle_mode==5){with(obj_ene2_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
	        if(global.battle_mode==6){with(obj_ene3_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
	        if(global.battle_mode==7){with(obj_ene4_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
	        if(global.battle_mode==8){with(obj_ene5_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
	        if(global.battle_mode==9){with(obj_ene6_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
	    }
	    if(global.battle_area==2){//ability select mode
	        if(global.battle_mode==0){draw_text(view_left()+140,view_top()+view_height()-130,string_hash_to_newline(">"));}
	        if(global.battle_mode==1){draw_text(view_left()+365,view_top()+view_height()-130,string_hash_to_newline(">"));}
	        if(global.battle_mode==2){draw_text(view_left()+140,view_top()+view_height()-110,string_hash_to_newline(">"));}
	        if(global.battle_mode==3){draw_text(view_left()+365,view_top()+view_height()-110,string_hash_to_newline(">"));}
	        if(global.battle_mode==4){draw_text(view_left()+140,view_top()+view_height()-90,string_hash_to_newline(">"));}
	        if(global.battle_mode==5){draw_text(view_left()+365,view_top()+view_height()-90,string_hash_to_newline(">"));}
	        if(global.battle_mode==6){draw_text(view_left()+140,view_top()+view_height()-70,string_hash_to_newline(">"));}
	        if(global.battle_mode==7){draw_text(view_left()+365,view_top()+view_height()-70,string_hash_to_newline(">"));}
	        if(global.battle_mode==8){draw_text(view_left()+140,view_top()+view_height()-50,string_hash_to_newline(">"));}
	        if(global.battle_mode==9){draw_text(view_left()+365,view_top()+view_height()-50,string_hash_to_newline(">"));}
	    }
	}
	/////////////////////////////////////////////////////////////
	//draw selected - star on selected player
	if(rdy==1){
	font_size=20;
	draw_text(x+sprite_width/2,y,string_hash_to_newline("*"));
	font_size=10;
	}
	/////////////////////////////////////////////////////////////



}

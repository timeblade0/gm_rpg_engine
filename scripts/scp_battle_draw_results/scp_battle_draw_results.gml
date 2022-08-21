function scp_battle_draw_results() {
	//draw bkg
	draw_set_color(c_navy);
	draw_rectangle(view_left(),view_top(),view_left()+view_width(),view_top()+view_height(),0);
	draw_set_color(c_white);
	draw_line(view_left()+150,view_top(),view_left()+150,view_top()+view_height());//selections divider

	//draw general text - "Battle Results", "EXP", ect
	draw_text(view_left()+50,view_top()+5,string_hash_to_newline("Battle Results"));
	draw_text(view_left()+5,view_top()+30,string_hash_to_newline("EXP Won: "+string(global.battle_reward_xp)+" / "+string(global.xptemp)));
	draw_text(view_left()+5,view_top()+50,string_hash_to_newline("Gold Won: "+string(global.battle_reward_money)));
	draw_text(view_left()+5,view_top()+400,string_hash_to_newline("Press \"Z\" to continue"));
	draw_text(view_left()+5,view_top()+460,string_hash_to_newline("Gold: "+string(global.money)));

	//draw lv ups
	if(mode==2){
	if(lv_up[1]==1){draw_text(200,20,string_hash_to_newline("LV UP!"));}//p1 lv up
	if(lv_up[2]==1){draw_text(450,20,string_hash_to_newline("LV UP!"));}//p2 lv up
	//p3 lv up here
	//p4 lv up here
	}

	scp_draw_player_stats();



}

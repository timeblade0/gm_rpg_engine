function scp_battle_draw_stats() {
	//draw battle stats - hp bar, mp bar, etc
	//run in draw event of battle control

	if(global.battle_area!=2&&global.battle_area!=4){//if not ability/item select area
	//draw catagories
	draw_set_color(c_white);
	draw_text(view_left()+130,view_top()+view_height()-150,string_hash_to_newline("Name:                      HP:                           MP:                          A/D/M/R/S/L"));
	////////////////////////////////////////////////////////////////
	//draw stats p1
	if(global.name[1]!=""){//if p1 is used
	draw_set_color(c_white);
	draw_text(view_left()+130,view_top()+view_height()-130,string_hash_to_newline(global.name[1]));

	//hp box max P1
	draw_set_color(c_red);//set color
	draw_rectangle(view_left()+230,view_top()+view_height()-130,view_left()+325,view_top()+view_height()-115,0);//draw hp box bkg

	//hp box left P1
	draw_set_color(c_teal);//set color
	bar_length=(global.battle_hp[1]/global.battle_hpmax[1])*100-5;
	draw_rectangle(view_left()+230,view_top()+view_height()-130,view_left()+230+bar_length,view_top()+view_height()-115,0);//draw hp box

	//mp box max P1
	draw_set_color(c_red);//set color
	draw_rectangle(view_left()+330,view_top()+view_height()-130,view_left()+425,view_top()+view_height()-115,0);//draw mp box bkg

	//mp box left P1
	draw_set_color(c_teal);
	bar_length=(global.battle_mp[1]/global.battle_mpmax[1])*100-5;
	draw_rectangle(view_left()+330,view_top()+view_height()-130,view_left()+330+bar_length,view_top()+view_height()-115,0);//draw hp box

	//hp and mp text P1
	draw_set_color(c_white);
	draw_text(view_left()+230,view_top()+view_height()-130,string_hash_to_newline("HP: "+string(global.battle_hp[1])+"/"+string(global.battle_hpmax[1])));
	draw_text(view_left()+330,view_top()+view_height()-130,string_hash_to_newline("MP: "+string(global.battle_mp[1])+"/"+string(global.battle_mpmax[1])));

	//stats P1
	draw_set_color(c_white);
	draw_text(view_left()+430,view_top()+view_height()-130,string_hash_to_newline(string(global.battle_atk[1])+"/"+string(global.battle_def[1])+"/"+string(global.battle_mag[1])+"/"+string(global.battle_res[1])+"/"+string(global.battle_spd[1])+"/"+string(global.battle_luck[1])));
	}
	////////////////////////////////////////////////////////////////
	//draw stats p2
	if(global.name[2]!=""){//if p2 is used
	draw_set_color(c_white);
	draw_text(view_left()+130,view_top()+view_height()-110,string_hash_to_newline(global.name[2]));

	//hp box max p2
	draw_set_color(c_red);
	draw_rectangle(view_left()+230,view_top()+view_height()-110,view_left()+325,view_top()+view_height()-95,0);//draw hp box bkg

	//hp bar left p2
	bar_length=(global.battle_hp[2]/global.battle_hpmax[2])*100-5;
	draw_set_color(c_teal);
	draw_rectangle(view_left()+230,view_top()+view_height()-110,view_left()+230+bar_length,view_top()+view_height()-95,0);//draw hp box

	//mp bar max p2
	draw_set_color(c_red);
	draw_rectangle(view_left()+330,view_top()+view_height()-110,view_left()+425,view_top()+view_height()-95,0);//draw hp box bkg

	//mp bar left p2
	bar_length=(global.battle_mp[2]/global.battle_mpmax[2])*100-5;
	draw_set_color(c_teal);
	draw_rectangle(view_left()+330,view_top()+view_height()-110,view_left()+330+bar_length,view_top()+view_height()-95,0);//draw hp box

	//hp and mp text p2
	draw_set_color(c_white);
	draw_text(view_left()+230,view_top()+view_height()-110,string_hash_to_newline("HP: "+string(global.battle_hp[2])+"/"+string(global.battle_hpmax[2])));
	draw_text(view_left()+330,view_top()+view_height()-110,string_hash_to_newline("MP: "+string(global.battle_mp[2])+"/"+string(global.battle_mpmax[2])));

	//stats p2
	draw_set_color(c_white);
	draw_text(view_left()+430,view_top()+view_height()-110,string_hash_to_newline(string(global.battle_atk[2])+"/"+string(global.battle_def[2])+"/"+string(global.battle_mag[2])+"/"+string(global.battle_res[2])+"/"+string(global.battle_spd[2])+"/"+string(global.battle_luck[2])));
	}

	//draw stats p3 here
	//draw stats p4 here
	}



}

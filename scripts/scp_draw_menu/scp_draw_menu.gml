function scp_draw_menu() {
	//draw menu
	//put in draw event of menu control
	if(global.menu_visible==1){//if menu is up - show menu

	//set max mode for menu areas
	if(global.menu_area==0){obj_menu_control.mode_max=10;}//main menu
	if(global.menu_area==1){obj_menu_control.mode_max=20;}//item selection
	if(global.menu_area==2){obj_menu_control.mode_max=4;}//item user
	if(global.menu_area==3){obj_menu_control.mode_max=4;}//ability user
	if(global.menu_area==4){obj_menu_control.mode_max=10;}//ability select
	if(global.menu_area==5){obj_menu_control.mode_max=4;}//ability effect target
	if(global.menu_area==6){obj_menu_control.mode_max=20;}//key item selection
	if(global.menu_area==7){obj_menu_control.mode_max=20;}//equipment view

	//loop menu mode
	if(global.menu_mode>mode_max-1){global.menu_mode=0;}//bottem to top
	if(global.menu_mode<0){global.menu_mode=mode_max-1;}//top to bottem

	//draw background
	draw_set_color(c_navy);
	draw_rectangle(view_left(),view_top(),view_left()+view_width(),view_top()+view_height(),0);//box

	//selections divider
	draw_set_color(c_white);
	draw_line(view_left()+150,view_top(),view_left()+150,view_top()+view_height());

	//draw selections
	draw_set_color(c_white);
	draw_text(view_left()+50,view_top()+30,string_hash_to_newline("Item"));//mode0
	draw_text(view_left()+50,view_top()+60,string_hash_to_newline("Key Items"));//mode1
	draw_text(view_left()+50,view_top()+90,string_hash_to_newline("Abilities"));//mode2
	draw_text(view_left()+50,view_top()+120,string_hash_to_newline("Equipment"));//mode3
	font_color=c_black//black font ************* change when added
	draw_text(view_left()+50,view_top()+150,string_hash_to_newline("Party"));//mode4
	font_color=c_white//white font *************
	draw_text(view_left()+50,view_top()+180,string_hash_to_newline("Save"));//mode5
	draw_text(view_left()+50,view_top()+210,string_hash_to_newline("Load"));//mode6
	draw_text(view_left()+50,view_top()+240,string_hash_to_newline("Restart Game"));//mode7
	draw_text(view_left()+50,view_top()+270,string_hash_to_newline("Exit Game"));//mode8
	draw_text(view_left()+50,view_top()+300,string_hash_to_newline("Close Menu"));//mode9

	//draw money
	draw_text(view_left()+5,view_top()+460,string_hash_to_newline("Gold: "+string(global.money)));

	scp_draw_menu_selections();//draw selections

	//draw menu area - ability, item, ect
	if(global.menu_area==0){scp_draw_player_stats();}//main menu
	if(global.menu_area==1){scp_draw_menu_items();}//item area
	if(global.menu_area==2){scp_draw_player_stats();}//item target select
	if(global.menu_area==3){scp_draw_player_stats();}//ability user select
	if(global.menu_area==4){scp_draw_menu_abilities();}//ability area
	if(global.menu_area==5){scp_draw_player_stats();}//ability target select
	if(global.menu_area==6){scp_draw_menu_key_items();}//key item area
	if(global.menu_area==7){scp_draw_menu_equip_items();}//equipment view
	}

	//menu not up - don't show
	if(global.menu_visible==0){//no menu
	global.menu_area=0;
	global.menu_mode=0;
	}



}

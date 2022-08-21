function scp_draw_menu_abilities() {
	//draw menu abilities
	//put in draw event of menu control

	//font settings
	font_color=c_white;
	font_size=10;
	font_style="Arial";

	//dividing lines
	draw_line(view_left()+390,view_top(),view_left()+390,view_top()+view_height());//vertical line

	//draw catagory names
	draw_text(250,30,string_hash_to_newline("Abilities:"));

	//draw items
	y_value=70;
	ability_num=1;
	while(ability_num<=10){
	draw_text(200,y_value,string_hash_to_newline(global.ability[global.ability_user,ability_num]));//draw ability name
	ability_mp=scp_get_ability_mp(global.ability[global.ability_user,ability_num]);//get ability mp
	draw_text(300,y_value,string_hash_to_newline("MP: "+string(ability_mp)));//draw ability mp
	//draw ability pow ***
	y_value+=20;
	ability_num+=1;
	}

	//draw ability info
	draw_text(view_left()+200,view_top()+300,string_hash_to_newline(scp_get_ability_info(global.ability[global.ability_user,global.menu_mode+1])));



}

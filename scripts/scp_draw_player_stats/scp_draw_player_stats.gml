function scp_draw_player_stats() {
	//draw player stats
	//put in  draw event of the object that draws this

	//font settings
	font_color=c_white;
	font_size=10;
	font_style="Arial";

	//dividing lines
	draw_line(view_left()+390,view_top(),view_left()+390,view_top()+view_height());//vertical line
	draw_line(view_left()+150,view_top()+240,view_left()+view_width(),view_top()+240);//horizontal line

	//draw p1 stats in box1
	draw_sprite(global.profile[1],0,view_left()+200,view_top()+50);//profile
	//general info
	draw_text(view_left()+275,view_top()+50,string_hash_to_newline("Name: "+global.name[1]));
	draw_text(view_left()+275,view_top()+65,string_hash_to_newline("Gender: "+global.gender[1]));
	draw_text(view_left()+275,view_top()+80,string_hash_to_newline("Class: "+global.class[1]));
	draw_text(view_left()+200,view_top()+100,string_hash_to_newline("LV: "+string(global.level[1])));
	//stats
	draw_text(view_left()+200,view_top()+120,string_hash_to_newline("HP: "+string(global.hp[1])+"/" +string(global.hpmax[1])));
	draw_text(view_left()+300,view_top()+120,string_hash_to_newline("MP: "+string(global.mp[1])+"/" +string(global.mpmax[1])));
	draw_text(view_left()+200,view_top()+140,string_hash_to_newline("ATK: "+string(global.atk[1])));
	draw_text(view_left()+300,view_top()+140,string_hash_to_newline("MAG: "+string(global.mag[1])));
	draw_text(view_left()+200,view_top()+160,string_hash_to_newline("DEF: "+string(global.def[1])));
	draw_text(view_left()+300,view_top()+160,string_hash_to_newline("RES: "+string(global.res[1])));
	draw_text(view_left()+200,view_top()+180,string_hash_to_newline("SPD: "+string(global.spd[1])));
	draw_text(view_left()+300,view_top()+180,string_hash_to_newline("LUCK: "+string(global.luck[1])));
	draw_text(view_left()+200,view_top()+210,string_hash_to_newline("EXP: "+string(global.xp[1])+"/"+string(global.xpmax[1])));

	//draw p2 stats in box2
	draw_sprite(global.profile[2],0,view_left()+450,view_top()+50);//profile
	//general info
	draw_text(view_left()+525,view_top()+50,string_hash_to_newline("Name: "+global.name[2]));
	draw_text(view_left()+525,view_top()+65,string_hash_to_newline("Gender: "+global.gender[2]));
	draw_text(view_left()+525,view_top()+80,string_hash_to_newline("Class: "+global.class[2]));
	draw_text(view_left()+450,view_top()+100,string_hash_to_newline("LV: "+string(global.level[2])));
	//stats
	draw_text(view_left()+450,view_top()+120,string_hash_to_newline("HP: "+string(global.hp[2])+"/" +string(global.hpmax[2])));
	draw_text(view_left()+550,view_top()+120,string_hash_to_newline("MP: "+string(global.mp[2])+"/" +string(global.mpmax[2])));
	draw_text(view_left()+450,view_top()+140,string_hash_to_newline("ATK: "+string(global.atk[2])));
	draw_text(view_left()+550,view_top()+140,string_hash_to_newline("MAG: "+string(global.mag[2])));
	draw_text(view_left()+450,view_top()+160,string_hash_to_newline("DEF: "+string(global.def[2])));
	draw_text(view_left()+550,view_top()+160,string_hash_to_newline("RES: "+string(global.res[2])));
	draw_text(view_left()+450,view_top()+180,string_hash_to_newline("SPD: "+string(global.spd[2])));
	draw_text(view_left()+550,view_top()+180,string_hash_to_newline("LUCK: "+string(global.luck[2])));
	draw_text(view_left()+450,view_top()+210,string_hash_to_newline("EXP: "+string(global.xp[2])+"/"+string(global.xpmax[2])));



}

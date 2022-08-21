function scp_battle_draw_player_abilities() {
	//draw ability selection
	//draws abilities when in ability select area
	if(global.battle_area==2&&rdy==1){//if this turn and ability selection area
	draw_line(view_left()+350,view_top()+view_height()-150,view_left()+350,view_top()+view_height());
	//draw abilities
	y_value=130;
	num=1;
	while(num<=10){//draw all 10 abilities
	    //ability1 left
	    draw_text(view_left()+150,view_top()+view_height()-y_value,string_hash_to_newline(global.battle_ability[battler_number,num]));//draw ability name
	    draw_text(view_left()+225,view_top()+view_height()-y_value,string_hash_to_newline("POW: "+string(scp_get_ability_power(global.battle_ability[battler_number,num]))));//draw ability pow
	    draw_text(view_left()+300,view_top()+view_height()-y_value,string_hash_to_newline("MP: "+string(scp_get_ability_mp(global.battle_ability[battler_number,num]))));//draw ability mp
	    num+=1;
	    //ability right
	    draw_text(view_left()+375,view_top()+view_height()-y_value,string_hash_to_newline(global.battle_ability[battler_number,num]));//draw ability name
	    draw_text(view_left()+450,view_top()+view_height()-y_value,string_hash_to_newline("POW: "+string(scp_get_ability_power(global.battle_ability[battler_number,num]))));//draw ability pow
	    draw_text(view_left()+525,view_top()+view_height()-y_value,string_hash_to_newline("MP: "+string(scp_get_ability_mp(global.battle_ability[battler_number,num]))));//draw ability mp
	    num+=1;
	    y_value-=20
	    }
	}



}

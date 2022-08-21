function scp_battle_draw_menu() {
	//this script draws the battle menu, limits battle mode, has player death code, and victory code
	//NOTE: You DO NOT have to change this script unless you want more than 4 players

	//draw batle menu
	draw_set_color(c_navy);
	draw_roundrect(view_left(),view_top()+view_height()-150,view_left()+view_width(),view_top()+view_height(),0);//box
	draw_set_color(c_white);
	draw_roundrect(view_left(),view_top()+view_height()-150,view_left()+view_width(),view_top()+view_height(),1);//outline

	//white divider line
	draw_set_color(c_white);
	draw_line(view_left()+125,view_top()+view_height()-150,view_left()+125,view_top()+view_height());

	draw_set_color(c_white);
	font_size=10;//font size
	font_style="Arial";

	//all mode max for battle
	if(global.battle_area==0){global.battle_mode_max=6;}//main battle
	if(global.battle_area==1){global.battle_mode_max=10;}//attack target
	if(global.battle_area==2){global.battle_mode_max=10;}//ability select
	if(global.battle_area==3){global.battle_mode_max=10;}//ability target
	if(global.battle_area==4){global.battle_mode_max=20;}//item select
	if(global.battle_area==5){global.battle_mode_max=10;}//item target

	//battle mode loop
	if(global.battle_mode>global.battle_mode_max-1){global.battle_mode=0;}//loop bottem to top
	if(global.battle_mode<0){global.battle_mode=global.battle_mode_max-1;}//loop top to bottem

	//battle player die
	with(obj_p1_battle){if(global.battle_hp[1]<1){sprite_index=global.battle_die[1]}}//p1
	with(obj_p2_battle){if(global.battle_hp[2]<1){sprite_index=global.battle_die[2]}}//p2
	with(obj_p3_battle){if(global.battle_hp[3]<1){sprite_index=global.battle_die[3]}}//p3
	with(obj_p4_battle){if(global.battle_hp[4]<1){sprite_index=global.battle_die[4]}}//p4

	//if no enemies, end battle in victory
	if(instance_number(obj_battle_enemy_parent)==0){
	    if(instance_number(obj_battle_win_pause)==0){
	        global.battle_wait=1;
	        instance_create(0,0,obj_battle_win_pause);
	        audio_play_sound(snd_battle_win,1,1);
	    }
	}
}

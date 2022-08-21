action_set_relative(1);
scp_draw_self()
action_draw_text(""+string(global.battle_hp[battler_number])+"/"+string(global.battle_hpmax[battler_number]), 0, sprite_height/2);

//draw selected
if(rdy==1){
	font_size=20;
	draw_text(x-sprite_width/2,y,string_hash_to_newline("*"));
	font_size=10;
}

//draw battle stats
scp_battle_draw_stat_effects()

//die
if(global.battle_hp[battler_number]<=0){
	global.battle_reward_xp+=xp;//give exp
	global.battle_reward_money+=money;//drop money
	sound_play(snd_battle_kill);//enemy die sound
	instance_destroy();//remove enemy
}

action_set_relative(0);

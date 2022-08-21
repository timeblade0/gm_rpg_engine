function scp_battle_results_z_press() {
	//battle results z key pressed
	//skip xp + money scrolling
	if(mode==0){
	global.money+=global.battle_reward_money;
	global.battle_reward_money=0;
	global.xp[1]+=global.battle_reward_xp;
	global.xp[2]+=global.battle_reward_xp;
	global.xp[3]+=global.battle_reward_xp;
	global.xp[4]+=global.battle_reward_xp;
	global.battle_reward_xp=0;
	mode=1;
	//exit//end event
	}
	//level up players
	if(mode==1){
	scp_battle_level_up();
	//skip lv up part if no lv ups
	if(global.xp[1]<global.xpmax[1]&&global.xp[2]<global.xpmax[2]&&global.xp[3]<global.xpmax[3]&&global.xp[4]<global.xpmax[4]){room_goto(global.current_map);}
	mode=2;//set mode to exit on next press
	exit//end event
	}
	//end battle
	if(mode==2){room_goto(global.current_map);}



}

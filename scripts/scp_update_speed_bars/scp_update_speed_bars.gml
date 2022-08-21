function scp_update_speed_bars() {
	//update speed bars
	//NOTE: You DO NOT need to change this script
	//run in step event of battle control

	//turns
	done=0;
	if(global.battle_wait==0){//if not any battler's turn
	if(p1bar>=50&&done==0){with(obj_p1_battle){event_user(0);done=1;}}//p1 turn
	if(p2bar>=50&&done==0){with(obj_p2_battle){event_user(0);done=1;}}//p2 turn
	if(e1bar>=50&&done==0){with(obj_ene1_battle){event_user(0);done=1;}}//ene1 turn
	if(e2bar>=50&&done==0){with(obj_ene2_battle){event_user(0);done=1;}}//ene2 turn
	if(e3bar>=50&&done==0){with(obj_ene3_battle){event_user(0);done=1;}}//ene3 turn
	}

	//update speed bars - 50=max
	if(global.battle_wait==0){//if not any battler's turn
	if(instance_number(obj_p1_battle)!=0){p1bar+=global.battle_spd[1];}
	if(instance_number(obj_p2_battle)!=0){p2bar+=global.battle_spd[2];}
	if(instance_number(obj_p3_battle)!=0){p3bar+=global.battle_spd[3];}
	if(instance_number(obj_p4_battle)!=0){p4bar+=global.battle_spd[4];}
	if(instance_number(obj_ene1_battle)!=0){e1bar+=global.battle_spd[5];}
	if(instance_number(obj_ene2_battle)!=0){e2bar+=global.battle_spd[6];}
	if(instance_number(obj_ene3_battle)!=0){e3bar+=global.battle_spd[7];}
	if(instance_number(obj_ene4_battle)!=0){e4bar+=global.battle_spd[8];}
	if(instance_number(obj_ene5_battle)!=0){e5bar+=global.battle_spd[9];}
	if(instance_number(obj_ene6_battle)!=0){e6bar+=global.battle_spd[10];}
	}



}

function scp_battle_ai_atk_rand_player() {
	//argument0: 
	//0 = attack
	//1 = magic

	//AI - choose a random player to atk
	done=0;
	while(done=0){ //repeat until a valid target
		choice=floor(random(4)); //4 players to choose from
		if(choice==0&&instance_number(obj_p1_battle)==1){if(global.battle_hp[1]>0){done=1;global.target=obj_p1_battle;}}//p1 - target
		if(choice==1&&instance_number(obj_p2_battle)==1){if(global.battle_hp[2]>0){done=1;global.target=obj_p2_battle;}}//p2 - target
		if(choice==2&&instance_number(obj_p3_battle)==1){if(global.battle_hp[3]>0){done=1;global.target=obj_p3_battle;}}//p3 - target
		if(choice==3&&instance_number(obj_p4_battle)==1){if(global.battle_hp[4]>0){done=1;global.target=obj_p4_battle;}}//p4 - target
	}
	sound_play(snd_battle_hit);//attack sound
	global.source=object_index;//set attacker
	global.element=atk_element;
	if(argument[0]==0){scp_calculate_damage(0, global.target)}//attack damage
	if(argument[0]==1){scp_calculate_damage(4, global.target)}//magic damage
	scp_enemy_attacks();
	alarm[0]=30;		//end battler turn - with pause
}

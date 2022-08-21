function scp_battle_skip_absent_battlers() {
	//skip battlers not present

	//set movement direction
	if(global.mode_dire==90){num=-1;}//moving up
	if(global.mode_dire==270){num=1;}//moving down

	if(global.battle_area==1||global.battle_area==3||global.battle_area==5){//in attack/ability/item target mode
		if(instance_number(obj_p1_battle)==0	&& global.battle_mode==0){ global.battle_mode+=num; }//no p1
		if(instance_number(obj_p2_battle)==0	&& global.battle_mode==1){ global.battle_mode+=num; }//no p2
		if(instance_number(obj_p3_battle)==0	&& global.battle_mode==2){ global.battle_mode+=num; }//no p3
		if(instance_number(obj_p4_battle)==0	&& global.battle_mode==3){ global.battle_mode+=num; }//no p4
		if(instance_number(obj_ene1_battle)==0	&& global.battle_mode==4){ global.battle_mode+=num; }//no ene1
		if(instance_number(obj_ene2_battle)==0	&& global.battle_mode==5){ global.battle_mode+=num; }//no ene2
		if(instance_number(obj_ene3_battle)==0	&& global.battle_mode==6){ global.battle_mode+=num; }//no ene3
		if(instance_number(obj_ene4_battle)==0	&& global.battle_mode==7){ global.battle_mode+=num; }//no ene4
		if(instance_number(obj_ene5_battle)==0	&& global.battle_mode==8){ global.battle_mode+=num; }//no ene5
		if(instance_number(obj_ene6_battle)==0	&& global.battle_mode==9){ global.battle_mode+=num; }//no ene6
	}
	//skip dead players
	if(global.battle_area==1||global.battle_area==3){//in attack/ability target mode
		if(global.battle_hp[1]<1 && global.battle_mode==0){ global.battle_mode+=num; }//no p1
		if(global.battle_hp[2]<1 && global.battle_mode==1){ global.battle_mode+=num; }//no p2
		if(global.battle_hp[3]<1 && global.battle_mode==2){ global.battle_mode+=num; }//no p3
		if(global.battle_hp[4]<1 && global.battle_mode==3){ global.battle_mode+=num; }//no p4
	}
}

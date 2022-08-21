//run in draw event of obj_battle_control
//battle - set target
//NOTE: You DO NOT need to change this

function scp_battle_set_target() {
	if(global.battle_area==0||global.battle_area==1){//if in attack/ability target mode
		if(global.battle_mode==0){global.target=obj_p1_battle;}//p1
		if(global.battle_mode==1){global.target=obj_p2_battle;}//p2
		if(global.battle_mode==2){global.target=obj_p3_battle;}//p3
		if(global.battle_mode==3){global.target=obj_p4_battle;}//p4
		if(global.battle_mode==4){global.target=obj_ene1_battle;}//e1
		if(global.battle_mode==5){global.target=obj_ene2_battle;}//e2
		if(global.battle_mode==6){global.target=obj_ene3_battle;}//e3
		if(global.battle_mode==7){global.target=obj_ene4_battle;}//e4
		if(global.battle_mode==8){global.target=obj_ene5_battle;}//e5
		if(global.battle_mode==9){global.target=obj_ene6_battle;}//e6
	}
}

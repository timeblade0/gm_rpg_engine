function scp_battle_player_x_press() {
	//cancel
	if(rdy==1){
	    if(global.battle_area==1){global.battle_area=0;global.battle_mode=0;}//attack mode to main mode
	    if(global.battle_area==2||global.battle_area==4){//ability/item select mode to main mode
	    global.battle_area=0;global.battle_mode=0;}
	    if(global.battle_area==3){//ability target mode to ability select mode
	    global.battle_area=2;global.battle_mode=0;}
	    if(global.battle_area==5){//item target mode to item select mode
	    global.battle_area=4;global.battle_mode=0;}
	}



}

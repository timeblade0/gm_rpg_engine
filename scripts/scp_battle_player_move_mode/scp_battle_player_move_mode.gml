function scp_battle_player_move_mode() {
	//move battle mode
	/////////////////////////////////////////////////////
	//move battle mode up
	if(keyboard_check(vk_up)==1){
	if(rdy==1){//if this turn
	if(global.battle_area!=2&&global.battle_area!=4){global.battle_mode-=1;}//if not ability/item selection - normal
	if(global.battle_area==2){global.battle_mode-=2;}//if ability selection - move up 2 to go up 1 row
	if(global.battle_area==4){global.battle_mode-=4;}//if item selection - move up 4 to go up 1 row
	global.mode_dire=90;//direction mode is moving
	}
	}
	/////////////////////////////////////////////////////
	//move battle mode down
	if(keyboard_check(vk_down)==1){
	if(rdy==1){//if this turn
	if(global.battle_area!=2&&global.battle_area!=4){global.battle_mode+=1;}//if not ability selection - normal
	if(global.battle_area==2){global.battle_mode+=2;}//if ability selection - move down 2 to go down 1 row
	if(global.battle_area==4){global.battle_mode+=4;}//if item selection - move down 4 to go down 1 row
	global.mode_dire=270;//direction mode is moving
	}
	}
	/////////////////////////////////////////////////////
	//move battle mode right
	if(keyboard_check(vk_right)==1){
	if(rdy==1){//if this turn
	if(global.battle_area==2||global.battle_area==4){global.battle_mode+=1;}//if ability/item selection - move right 1
	if(global.battle_area==1||global.battle_area==3){global.battle_mode=0;}//if attack/ability target selection - go to players
	global.mode_dire=0;//direction mode is moving
	}
	}
	/////////////////////////////////////////////////////
	//move battle mode left
	if(keyboard_check(vk_left)==1){
	if(rdy==1){//if this turn
	if(global.battle_area==2||global.battle_area==4){global.battle_mode-=1;}//if ability/item selection - move left 1
	if(global.battle_area==1||global.battle_area==3){global.battle_mode=4;global.mode_dire=270;}//if attack/ability target selection - go to enemies
	global.mode_dire=180;//direction mode is moving
	}
	}
	/////////////////////////////////////////////////////



}

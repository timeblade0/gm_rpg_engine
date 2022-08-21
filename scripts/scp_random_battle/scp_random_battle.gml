function scp_random_battle() {
	//random battle
	//run in all 4 move events for player
	//NOTE: You DO NOT need to change this script
	//refer to object: how_battle to see how to set up random battles
	if(global.battle_able==1){ //if few second pause is past
	    if(global.pause==0){ // only if unpaused
	        if(floor(random(global.battle_chance))==0){ //1 in 25 chance for battle per step
	            global.current_tile=scp_tile_layer_find(1000000,obj_player.x,obj_player.y);
	            if(global.current_tile!=-1){//if map has tiles - some rooms only have a background
					global.current_tile=scp_tile_get_background(global.current_tile);
					with(obj_room_control_parent){event_user(0);} //chose battle to start
	            }
	        }
	    }
	}
}

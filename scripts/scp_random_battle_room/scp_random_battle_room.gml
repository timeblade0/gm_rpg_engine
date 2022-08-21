function scp_random_battle_room() {
	//run in room start code of control
	//choses a random enemy to that map and starts the fight

	//set background for battle - 20220611 SMW - chaning baatle background is a WIP
	/*
	if(global.current_tile==bkg_grass_tile)		{ scp_background_set( e__BG.Index, 0, bkg_battle_grass );}
	if(global.current_tile==bkg_sand_tile)		{ scp_background_set( e__BG.Index, 0, bkg_battle_desert );}
	if(global.current_tile==bkg_rock_floor_tile){ scp_background_set( e__BG.Index, 0, bkg_battle_cave );}
	*/

	//map1 random battles
	if(global.current_room==room_map1){
	    rand_bat=floor(random(3));		//define selection of random battles here
		
		//griffen + centaur
	    if(rand_bat==0){
	        nn=instance_create(64,128,obj_ene1_battle);
				with(nn){scp_battle_griffen_stats(5);}
	        nn=instance_create(112,224,obj_ene2_battle);
				with(nn){scp_battle_centaur_stats(6);}
	    }
		//griffen X3
	    if(rand_bat==1){
	        nn=instance_create(64,128,obj_ene1_battle);
				with(nn){scp_battle_griffen_stats(5);}
	        nn=instance_create(128,192,obj_ene2_battle);
	        with(nn){scp_battle_griffen_stats(6);}
				nn=instance_create(48,256,obj_ene3_battle);
	        with(nn){scp_battle_griffen_stats(7);}
	    }
		//dragonfly X2
	    if(rand_bat==2){
	        nn=instance_create(64,128,obj_ene1_battle);
				with(nn){scp_battle_dragonfly_stats(5);}
	        nn=instance_create(112,224,obj_ene2_battle);
				with(nn){scp_battle_dragonfly_stats(6);}
	    }
		//thunder drake X2 - 20220611 SMW this battle is still a WIP
	    /*if(rand_bat==3){
	        nn=instance_create(64,128,obj_ene1_battle);
	        with(nn){scp_battle_thunder_drake_stats(5);}
	        nn=instance_create(112,224,obj_ene2_battle);
	        with(nn){scp_battle_thunder_drake_stats(6);}
	    }*/
	}
}

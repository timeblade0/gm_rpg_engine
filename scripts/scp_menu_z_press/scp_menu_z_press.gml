function scp_menu_z_press() {
	//menu selection effects
	if(global.menu_visible==1){

	//menu area
	if(global.menu_area==0){

	//item - choice #0
	if(global.menu_mode==0){
	    global.menu_area=1;//item area
	    sound_play(snd_confirm);
	    global.menu_mode=0;
	    exit//exit this event
	}

	//key items - choice #1
	if(global.menu_mode==1){
	    global.menu_area=6;//key item area
	    sound_play(snd_confirm);
	    global.menu_mode=0;
	    exit//exit this event
	}

	//abilities - choice #2
	if(global.menu_mode==2){
	    global.menu_area=3;//ability user area
	    sound_play(snd_confirm);
	    global.menu_mode=0;
	    exit//exit this event
	}

	//equipment - choice #3
	if(global.menu_mode==3){
	    global.menu_area=7;//equipment view area
	    sound_play(snd_confirm);
	    global.menu_mode=0;
	    exit//exit this event
	}

	//order - choice #4 20220611 SMW - WIP
	if(global.menu_mode==4){sound_play(snd_cancel);}

	//save game - choice #5
	if(global.menu_mode==5){scp_save_game();}

	//load game - choice #6
	if(global.menu_mode==6){scp_load_game();}

	//restart game - choice #7
	if(global.menu_mode==7){
		if(show_question("Restart Game")==1){game_restart();}
	}
	
	//exit game - choice #8
	if(global.menu_mode==8){
	    if(show_question("Exit Game?")==1){game_end();}
	}

	//close menu - choice #9
	if(global.menu_mode==9){
	    global.menu_visible=0;
	    //if(global.show_question==0&&global.show_message==0){global.pause=0;}
	    }
	}
	/////////////////////////////////////////////////////////////////////
	//if in item select area - go to select item user
	if(global.menu_area==1){//if item area
	    global.current_item=global.menu_mode+1;//set selected item
	    if(global.item[global.current_item,1]!=""){//if item exsists
	        global.menu_mode=0;//reset mode
	        global.menu_area=2;//go to item use area
	        sound_play(snd_confirm);
	        exit//exit event
	    }
	    else{sound_play(snd_cancel);}//if item does not exsist - play error sound
	}

	//if in item user area - use item
	if(global.menu_area==2){//if item user area
	    global.item_user=global.menu_mode+1;//set item user
	    //scp_use_item(global.item_user);//use item on selected player
		scp_use_item();//use item on selected player
	    exit//exit event
	}
	/////////////////////////////////////////////////////////////////////
	//ability user area
	if(global.menu_area==3){//if ability user area
	    global.ability_user=global.menu_mode+1;//set item user
	    global.menu_area=4;//go to ability area
	    global.menu_mode=0;//reset mode
	    exit//exit event
	    }
	}
	/////////////////////////////////////////////////////////////////////
	//if in ability select area - go to ability target area
	if(global.menu_area==4){//if ability area
	    global.current_ability=global.menu_mode+1;//set selected ability
	    if(global.ability[global.ability_user,global.current_ability]!=""){//if ability exsists
	        if(scp_get_ability_healing(global.ability[global.ability_user,global.current_ability])==1){//if heal
	        global.menu_mode=0;//reset mode
	        global.menu_area=5;//go to ability target area
	        sound_play(snd_confirm);
	        exit//exit event
	        }
	        else{sound_play(snd_cancel);}//if ability not healing - play error sound
	    }
	    else{sound_play(snd_cancel);}//if ability does not exsist - play error sound
	}

	//if in ability target area - use ability
	if(global.menu_area==5){//if ability user area
	    global.ability_target=global.menu_mode+1;//set ability target
	    //scp_menu_use_ability(global.ability[global.ability_user,global.current_ability]);//use ability on target
		scp_menu_use_ability()//use ability on target
	    exit//exit event
	}
}

function scp_menu_x_press() {
	//close menu
	if(global.menu_visible==1){//if menu show
	    //if menu area - close
	    if(global.menu_area==0){
	        global.menu_visible=0;
	        global.pause=0;
	        sound_play(snd_cancel);
	    }
	    //if item/key item area - return to menu area
	    if(global.menu_area==1||global.menu_area==6){
	        global.menu_area=0;//go to menu area
	        global.menu_mode=0;//reset mode value
	        sound_play(snd_cancel);
	    }
	    //if item user area - return to item area
	    if(global.menu_area==2){
	        global.menu_area=1;//go to item area
	        global.menu_mode=0;//reset mode value
	        sound_play(snd_cancel);
	    }
	    //if ability user area - return to menu area
	    if(global.menu_area==3){
	        global.menu_area=0;//go to menu area
	        global.menu_mode=0;//reset mode value
	        sound_play(snd_cancel);
	    }
	    //if ability area - return to menu area
	    if(global.menu_area==4){
	        global.menu_area=0;//go to menu area
	        global.menu_mode=0;//reset mode value
	        sound_play(snd_cancel);
	    }
	    //if ability target area - return to ability area
	    if(global.menu_area==5){
	        global.menu_area=4;//go to ability area
	        global.menu_mode=0;//reset mode value
	        sound_play(snd_cancel);
	    }
	    //if equipment view area - return to main menu
	    if(global.menu_area==7){
	        global.menu_area=0;//go to main menu
	        global.menu_mode=0;//reset mode value
	        sound_play(snd_cancel);
	    }
	}



}

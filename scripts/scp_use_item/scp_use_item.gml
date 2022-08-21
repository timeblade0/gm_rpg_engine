function scp_use_item() {
	//use item
	//run when item and user are selected

	//use potion - heal 50 hp
	if(global.item[global.current_item,1]=="Potion"){
	    if(global.hp[global.item_user]>0){//if player not dead
	        if(global.hp[global.item_user]<global.hpmax[global.item_user]){//if not max hp
	            global.hp[global.item_user]+=50;//use on selected player
	            sound_play(snd_confirm);
	            global.item[global.current_item,2]-=1;//remove 1 after use
	        }
	        else{sound_play(snd_cancel);}
	    }
	    else{sound_play(snd_cancel);}
	}

	//use mega potion - heal 100 hp
	if(global.item[global.current_item,1]=="Mega Potion"){
	    if(global.hp[global.item_user]>0){//if player not dead
	        if(global.hp[global.item_user]<global.hpmax[global.item_user]){//if not max hp
	            global.hp[global.item_user]+=100;//use on selected player
	            sound_play(snd_confirm);
	            global.item[global.current_item,2]-=1;//remove 1 after use
	        }
	        else{sound_play(snd_cancel);}
	    }
	    else{sound_play(snd_cancel);}
	}

	//use ether - restore 50 mp
	if(global.item[global.current_item,1]=="Ether"){
	    if(global.hp[global.item_user]>0){//if player not dead
	        if(global.mp[global.item_user]<global.mpmax[global.item_user]){//if not max mp
	            global.mp[global.item_user]+=50;//use on selected player
	            sound_play(snd_confirm);
	            global.item[global.current_item,2]-=1;//remove 1 after use
	        }
	        else{sound_play(snd_cancel);}
	    }
	    else{sound_play(snd_cancel);}
	}

	//use phoenix down - revive and give 20% hp
	if(global.item[global.current_item,1]=="Phoenix Down"){
	    if(global.hp[global.item_user]<1){//use on dead
	        global.hp[global.item_user]=global.hpmax[global.item_user]*.2;
	        sound_play(snd_confirm);
	        global.item[global.current_item,2]-=1;//remove 1 after use
	    }
	    else{sound_play(snd_cancel);}
	}



}

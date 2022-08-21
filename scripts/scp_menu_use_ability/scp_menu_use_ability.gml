function scp_menu_use_ability() {
	//use ability in menu
	//run when ability, user, and target are selected

	//use cure - heal 30 hp
	if(global.ability[global.ability_user,global.current_ability]=="Cure"){
	    if(global.hp[global.ability_user]>0){//if player not dead
	        if(global.hp[global.ability_target]<global.hpmax[global.ability_target]){//if not max hp
	            mp_cost=scp_get_ability_mp(global.ability[global.ability_user,global.current_ability])
	            if(mp_cost<=global.mpmax[global.ability_user]){//if user has enough mp
	            global.hp[global.ability_target]+=30;//use on selected player
	            sound_play(snd_confirm);
	            global.mp[global.ability_user]-=scp_get_ability_mp(global.ability[global.ability_user,global.current_ability]);
	            }
	            else{sound_play(snd_cancel);}
	        }
	        else{sound_play(snd_cancel);}
	    }
	    else{sound_play(snd_cancel);}
	}



}

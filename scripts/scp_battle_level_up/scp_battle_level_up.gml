function scp_battle_level_up() {
	//level up
	//run in battle results control - z key pressed
	    increase=1.1;//set increase to 10%
	    lv_up[1]=0;lv_up[2]=0;lv_up[3]=0;lv_up[4]=0;
	    //lv players
	    for(num=1;num<=4;num+=1){//run 4 times, since 4 players
	        if(global.xp[num]>=global.xpmax[num]){
	            global.level[num]+=1;
	            global.xp[num]-=global.xpmax[num];//subtract xp
	            global.xpmax[num]*=2;//double needed xp for lv up
	            global.hpmax[num]=ceil(global.hpmax[num]*increase);//increase max hp
	            global.hp[num]=global.hpmax[num];//remove if you don't want hp heal at lv up
	            global.mpmax[num]=ceil(global.mpmax[num]*increase);//increase max hp
	            global.mp[num]=global.mpmax[num];//remove if you don't want mp heal at lv up
	            global.atk[num]=ceil(global.atk[num]*increase);//increase atk
	            if(global.def[num]==0){global.def[num]+=1}//no defence = +1
	            global.def[num]=ceil(global.def[num]*increase);//increase def
	            global.mag[num]=ceil(global.mag[num]*increase);//increase mag
	            if(global.res[num]==0){global.res[num]+=1}//no resistance = +1
	            global.res[num]=ceil(global.res[num]*increase);//increase res
	            global.spd[num]=ceil(global.spd[num]*increase);//increase speed
	            global.luck[num]=ceil(global.luck[num]*increase);//increase luck
	            lv_up[num]=1;//set player as leveled up
	            sound_play(snd_lv_up);
	        }
	    }



}

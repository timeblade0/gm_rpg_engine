function scp_limit_hp_mp() {
	//hp and mp limits limits
	//run in step event of obj_control
	//NOTE: You DO NOT need to change this

	//limit hp to max - not battle
	if(global.hp[1]>global.hpmax[1]){global.hp[1]=global.hpmax[1];}
	if(global.hp[2]>global.hpmax[2]){global.hp[2]=global.hpmax[2];}
	if(global.hp[3]>global.hpmax[3]){global.hp[3]=global.hpmax[3];}
	if(global.hp[4]>global.hpmax[4]){global.hp[4]=global.hpmax[4];}

	//limit mp to max - not battle
	if(global.mp[1]>global.mpmax[1]){global.mp[1]=global.mpmax[1];}
	if(global.mp[2]>global.mpmax[2]){global.mp[2]=global.mpmax[2];}
	if(global.mp[3]>global.mpmax[3]){global.mp[3]=global.mpmax[3];}
	if(global.mp[4]>global.mpmax[4]){global.mp[4]=global.mpmax[4];}
	////////////////////////////////////////////////////////////////

	for(num=1;num<=10;num+=1){//do 10 times - 1 for each battler
	//limit hp to max - battle
	if(global.battle_hp[num]>global.battle_hpmax[num]){global.battle_hp[num]=global.battle_hpmax[num];}

	//limit mp to max - battle
	if(global.battle_mp[num]>global.battle_mpmax[num]){global.battle_mp[num]=global.battle_mpmax[num];}

	//limit hp to 0 - battle
	if(global.battle_hp[num]<0){global.battle_hp[num]=0;}

	//limit mp to 0 - battle
	if(global.battle_mp[num]<0){global.battle_mp[num]=0;}
	}



}

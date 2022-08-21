function scp_full_heal() {
	//full heal - completely heal all players
	//NOTE: You DO NOT need to change this
	for(i=1;i<=4;i+=1){//run 4 times - one for each player
	global.hp[i]=global.hpmax[i];
	global.mp[i]=global.mpmax[i];
	}
}

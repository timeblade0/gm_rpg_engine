function scp_battle_results_distribute_rewards() {
	//distribute xp and money
	xp_factor=1; //decrease by 1 - can change

	//get money from battle
	if(global.battle_reward_money>0){//if you get any money
	    if(global.battle_reward_money<10){//factor by 1
	    money_factor=1;
	    global.battle_reward_money-=money_factor;
	    global.money+=money_factor;
	    }
	    if(global.battle_reward_money>=10&&global.battle_reward_money<100){//factor by 10
	    money_factor=10;
	    global.battle_reward_money-=money_factor;
	    global.money+=money_factor;
	    }
	    if(global.battle_reward_money>=100){//factor by 100
	    money_factor=100;
	    global.battle_reward_money-=money_factor;
	    global.money+=money_factor;
	    }
	}

	//get xp from battle
	if(global.battle_reward_xp!=0){
	global.battle_reward_xp-=xp_factor;
	if(global.hp[1]!=0){global.xp[1]+=xp_factor;}//if not dead or absent, give xp
	if(global.hp[2]!=0){global.xp[2]+=xp_factor;}//if not dead or absent, give xp
	if(global.hp[3]!=0){global.xp[3]+=xp_factor;}//if not dead or absent, give xp
	if(global.hp[4]!=0){global.xp[4]+=xp_factor;}//if not dead or absent, give xp
	sound_play(snd_money);
	}
	alarm[0]=1//speed to decrese



}

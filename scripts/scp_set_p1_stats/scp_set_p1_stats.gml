function scp_set_p1_stats() {
	//set p1 starting stats
	global.name[1]="Huro";
	global.gender[1]="Male";
	global.class[1]="Squire";
	global.stat_effect[1]="";
	global.level[1]=1;
	global.xp[1]=0;
	global.xpmax[1]=100;
	global.hp[1]=100;
	global.hpmax[1]=100;
	global.mp[1]=20;
	global.mpmax[1]=20;
	global.atk[1]=5;
	global.def[1]=0;
	global.mag[1]=3;
	global.res[1]=0;
	global.spd[1]=5;
	global.luck[1]=5;

	//set p1 starting sprites - map
	global.face_up[1]=spr_hero_m_u;
	global.face_right[1]=spr_hero_m_r;
	global.face_left[1]=spr_hero_m_l;
	global.face_down[1]=spr_hero_m_d;
	global.profile[1]=spr_face_hero1_m;

	//set p1 starting sprites - battle
	global.battle_stance[1]=spr_battle_hero1_m_stand;
	global.battle_attack[1]=spr_battle_hero1_m_attack;
	global.battle_die[1]=spr_battle_hero1_m_die;

	//set p1 starting abilities
	//ability[1,1]=ability p1, slot 1 - name with ""
	//use "" for no ability
	global.ability[1,1]="";
	global.ability[1,2]="";
	global.ability[1,3]="";
	global.ability[1,4]="";
	global.ability[1,5]="";
	global.ability[1,6]="";
	global.ability[1,7]="";
	global.ability[1,8]="";
	global.ability[1,9]="";
	global.ability[1,10]="";

	//set p1 equipment
	global.equip[1,1]="";//head
	global.equip[1,2]="";//body
	global.equip[1,3]="";//left arm
	global.equip[1,4]="";//right arm
	global.equip[1,5]="";//legs
	global.equip[1,6]="";//feet
	global.equip[1,7]="";//accessory
}

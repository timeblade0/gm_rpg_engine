function scp_set_p3_stats() {
	//set p3 starting stats
	global.name[3]="Eiko";
	global.gender[3]="Female";
	global.class[3]="Mage";
	global.stat_effect[3]="";
	global.level[3]=1;
	global.xp[3]=0;
	global.xpmax[3]=100;
	global.hp[3]=75;
	global.hpmax[3]=75;
	global.mp[3]=50;
	global.mpmax[3]=50;
	global.atk[3]=3;
	global.def[3]=0;
	global.mag[3]=5;
	global.res[3]=0;
	global.spd[3]=5;
	global.luck[3]=5;

	//set p3 starting sprites - map
	global.face_up[3]=spr_hero_f_u;
	global.face_right[3]=spr_hero_f_r;
	global.face_left[3]=spr_hero_f_l;
	global.face_down[3]=spr_hero_f_d;
	global.profile[3]=spr_face_hero1_f;

	//set p3 starting sprites - battle
	global.battle_stance[3]=spr_battle_hero1_f_stand;
	global.battle_attack[3]=spr_battle_hero1_f_attack;
	global.battle_die[3]=spr_battle_hero1_f_die;

	//set p3 starting abilities
	//use "" for no ability
	global.ability[3,1]="Fire";
	global.ability[3,2]="Water";
	global.ability[3,3]="Ice";
	global.ability[3,4]="Thunder";
	global.ability[3,5]="Shockwave";
	global.ability[3,6]="Cure";
	global.ability[3,7]="";
	global.ability[3,8]="";
	global.ability[3,9]="";
	global.ability[3,10]="";

	//set p3 equipment
	global.equip[3,1]="";//head
	global.equip[3,2]="";//body
	global.equip[3,3]="";//left arm
	global.equip[3,4]="";//right arm
	global.equip[3,5]="";//legs
	global.equip[3,6]="";//feet
	global.equip[3,7]="";//accessory
}

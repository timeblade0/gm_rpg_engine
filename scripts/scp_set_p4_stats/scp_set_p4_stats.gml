function scp_set_p4_stats() {
	//set p4 starting stats
	global.name[4]="Eiko";
	global.gender[4]="Female";
	global.class[4]="Mage";
	global.stat_effect[4]="";
	global.level[4]=1;
	global.xp[4]=0;
	global.xpmax[4]=100;
	global.hp[4]=75;
	global.hpmax[4]=75;
	global.mp[4]=50;
	global.mpmax[4]=50;
	global.atk[4]=3;
	global.def[4]=0;
	global.mag[4]=5;
	global.res[4]=0;
	global.spd[4]=5;
	global.luck[4]=5;

	//set p4 starting sprites - map
	global.face_up[4]=spr_hero_f_u;
	global.face_right[4]=spr_hero_f_r;
	global.face_left[4]=spr_hero_f_l;
	global.face_down[4]=spr_hero_f_d;
	global.profile[4]=spr_face_hero1_f;

	//set p4 starting sprites - battle
	global.battle_stance[4]=spr_battle_hero1_f_stand;
	global.battle_attack[4]=spr_battle_hero1_f_attack;
	global.battle_die[4]=spr_battle_hero1_f_die;

	//set p4 starting abilities
	//use "" for no ability
	global.ability[4,1]="Fire";
	global.ability[4,2]="Water";
	global.ability[4,3]="Ice";
	global.ability[4,4]="Thunder";
	global.ability[4,5]="Shockwave";
	global.ability[4,6]="Cure";
	global.ability[4,7]="";
	global.ability[4,8]="";
	global.ability[4,9]="";
	global.ability[4,10]="";

	//set p4 equipment
	global.equip[4,1]="";//head
	global.equip[4,2]="";//body
	global.equip[4,3]="";//left arm
	global.equip[4,4]="";//right arm
	global.equip[4,5]="";//legs
	global.equip[4,6]="";//feet
	global.equip[4,7]="";//accessory
}

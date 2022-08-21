function scp_set_p2_stats() {
	//set p2 starting stats
	global.name[2]="Eiko";
	global.gender[2]="Female";
	global.class[2]="Mage";
	global.stat_effect[2]="";
	global.level[2]=1;
	global.xp[2]=0;
	global.xpmax[2]=100;
	global.hp[2]=75;
	global.hpmax[2]=75;
	global.mp[2]=50;
	global.mpmax[2]=50;
	global.atk[2]=3;
	global.def[2]=0;
	global.mag[2]=5;
	global.res[2]=0;
	global.spd[2]=5;
	global.luck[2]=5;

	//set p2 starting sprites - map
	global.face_up[2]=spr_hero_f_u;
	global.face_right[2]=spr_hero_f_r;
	global.face_left[2]=spr_hero_f_l;
	global.face_down[2]=spr_hero_f_d;
	global.profile[2]=spr_face_hero1_f;

	//set p2 starting sprites - battle
	global.battle_stance[2]=spr_battle_hero1_f_stand;
	global.battle_attack[2]=spr_battle_hero1_f_attack;
	global.battle_die[2]=spr_battle_hero1_f_die;

	//set p2 starting abilities
	//ability[2,1]=ability p1, slot 1 - name with ""
	//use "" for no ability
	global.ability[2,1]="Fire";
	global.ability[2,2]="Water";
	global.ability[2,3]="Ice";
	global.ability[2,4]="Thunder";
	global.ability[2,5]="Shockwave";
	global.ability[2,6]="Cure";
	global.ability[2,7]="";
	global.ability[2,8]="";
	global.ability[2,9]="";
	global.ability[2,10]="";

	//set p2 equipment
	global.equip[2,1]="";//head
	global.equip[2,2]="";//body
	global.equip[2,3]="";//left arm
	global.equip[2,4]="";//right arm
	global.equip[2,5]="";//legs
	global.equip[2,6]="";//feet
	global.equip[2,7]="";//accessory
}

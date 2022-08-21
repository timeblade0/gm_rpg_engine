function scp_battle_centaur_stats(argument0) {
	//run this in room object creation code
	//sets stats to this enemy
	//argument0=battler number

	//stats - centaur
	sprite_index=spr_battle_centaur;
	magic_atk=0

	//attack effect
	atk_effect="shoot_arrow"//shoot arrow

	xp=10;
	money=10;
	global.battle_stat_effect[argument0]="";
	global.battle_hp[argument0]=15;
	global.battle_hpmax[argument0]=global.battle_hp[argument0];
	global.battle_mp[argument0]=0;
	global.battle_mpmax[argument0]=global.battle_mp[argument0];
	global.battle_atk[argument0]=2;
	global.battle_def[argument0]=0;
	global.battle_mag[argument0]=0;
	global.battle_res[argument0]=0;
	global.battle_luck[argument0]=0;
	global.battle_spd[argument0]=4;
	global.battle_ability[argument0,1]="";
	global.battle_ability[argument0,2]="";
	global.battle_ability[argument0,3]="";
	global.battle_ability[argument0,4]="";
	global.battle_ability[argument0,5]="";
	global.battle_ability[argument0,6]="";
	global.battle_ability[argument0,7]="";
	global.battle_ability[argument0,8]="";
	global.battle_ability[argument0,9]="";
	global.battle_ability[argument0,10]="";

	//elemental info
	element="Nature";
	element2="";
	type="Horse";
	type2="Human";
	weakness="";
	weakness2="";
	resistance="";
	resistance2="";
	immune="";
	immune2="";
	absorb="";
	absorb2="";
}

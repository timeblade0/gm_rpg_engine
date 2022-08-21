function scp_battle_thunder_drake_stats(argument0) {
	//run this in room object creation code
	//sets stats to this enemy
	//argument0=battler number

	//stats - centaur
	sprite_index=spr_battle_thunder_drake;
	magic_atk=1

	//attack effect
	atk_effect="thunder"

	xp=15;
	money=15;
	global.battle_stat_effect[argument0]="";
	global.battle_hp[argument0]=5;
	global.battle_hpmax[argument0]=global.battle_hp[argument0];
	global.battle_mp[argument0]=20;
	global.battle_mpmax[argument0]=global.battle_mp[argument0];
	global.battle_atk[argument0]=0;
	global.battle_def[argument0]=0;
	global.battle_mag[argument0]=5;
	global.battle_res[argument0]=0;
	global.battle_luck[argument0]=0;
	global.battle_spd[argument0]=7;
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
	element="Thunder";
	element2="";
	type="Dragon";
	type2="";
	weakness="Ground";
	weakness2="Water";
	resistance="";
	resistance2="";
	immune="";
	immune2="";
	absorb="Thunder";
	absorb2="";



}

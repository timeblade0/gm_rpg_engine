function scp_battle_dragonfly_stats(argument0) {
	//run this in room object creation code
	//sets stats to this enemy
	//argument0=battler number

	//stats - dragonfly
	sprite_index=spr_battle_dragonfly;
	image_speed=0.1; //because it flies
	magic_atk=0

	//attack effect
	atk_effect="gust"

	xp=20;
	money=20;
	global.battle_stat_effect[argument0]="";
	global.battle_hp[argument0]=5;
	global.battle_hpmax[argument0]=global.battle_hp[argument0];
	global.battle_mp[argument0]=0;
	global.battle_mpmax[argument0]=global.battle_mp[argument0];
	global.battle_atk[argument0]=5;
	global.battle_def[argument0]=0;
	global.battle_mag[argument0]=0;
	global.battle_res[argument0]=0;
	global.battle_luck[argument0]=0;
	global.battle_spd[argument0]=10;
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
	element="Air";
	element2="";
	type="Dragon";
	type2="Fly";
	weakness="Thunder";
	weakness2="";
	resistance="Air";
	resistance2="";
	immune="Ground";
	immune2="";
	absorb="";
	absorb2="";



}

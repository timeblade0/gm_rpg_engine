//set stats to battle
//general info
rdy=0;
image_speed=0.2;
sprite_index=global.battle_stance[1];
global.battle_name[1]=global.name[1];
global.battle_class[1]=global.class[1];
global.battle_stat_effect[1]=global.stat_effect[1];

//stats
global.battle_hp[1]=global.hp[1];
global.battle_hpmax[1]=global.hpmax[1];
global.battle_mp[1]=global.mp[1];
global.battle_mpmax[1]=global.mpmax[1];
global.battle_atk[1]=global.atk[1];
global.battle_def[1]=global.def[1];
global.battle_mag[1]=global.mag[1];
global.battle_res[1]=global.res[1];
global.battle_spd[1]=global.spd[1];
global.battle_luck[1]=global.luck[1];

//abilities - 1 through 10
for(num=1;num<=10;num+=1){global.battle_ability[1,num]=global.ability[1,num];}

//elemental info
element="";
element2="";
type="";
type2="";
weakness="";
weakness2="";
resistance="";
resistance2="";
immune="";
immune2="";
absorb="";
absorb2="";

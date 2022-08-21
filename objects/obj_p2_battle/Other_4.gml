//set stats to battle
//general info
rdy=0;
image_speed=0.2;
sprite_index=global.battle_stance[2];
global.battle_name[2]=global.name[2];
global.battle_class[2]=global.class[2];
global.battle_stat_effect[2]=global.stat_effect[2];

//stats
global.battle_hp[2]=global.hp[2];
global.battle_hpmax[2]=global.hpmax[2];
global.battle_mp[2]=global.mp[2];
global.battle_mpmax[2]=global.mpmax[2];
global.battle_atk[2]=global.atk[2];
global.battle_def[2]=global.def[2];
global.battle_mag[2]=global.mag[2];
global.battle_res[2]=global.res[2];
global.battle_spd[2]=global.spd[2];
global.battle_luck[2]=global.luck[2];

//abilities - 1 through 10
for(num=1;num<=10;num+=1){global.battle_ability[2,num]=global.ability[2,num];}

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

//start turn
if(global.battle_wait==0){
if(defending==1){global.battle_def[battler_number]/=2;}//remove defend
sound_play(snd_battle_confirm);
global.battle_wait=1;
global.battle_turns+=1;
global.battle_mode_max=3;
rdy=1;
if(global.battle_hp[battler_number]<1){event_user(1);}//skip turn if dead
if(global.battle_stat_effect[battler_number]=="Par"){event_user(1);global.battle_stat_effect[battler_number]="";}//skip if paralized
}

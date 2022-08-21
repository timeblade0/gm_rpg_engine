//start turn
if(global.battle_wait==0){
sound_play(snd_battle_confirm);
global.battle_wait=1;
global.battle_turns+=1;
rdy=1;
}

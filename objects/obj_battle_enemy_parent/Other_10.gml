//attack
if(global.battle_wait==0){
    if(global.battle_stat_effect[battler_number]!="Par"){//if not paralized, attack
    rdy=1;
    sound_play(snd_battle_confirm);
    global.battle_wait=1;
    global.battle_turns+=1;
    scp_enemy_attacks();
    scp_battle_ai_atk_rand_player(magic_atk);
    }
    if(global.battle_stat_effect[battler_number]=="Par"){event_user(1);global.battle_stat_effect[battler_number]="";}//skip if paralized
}


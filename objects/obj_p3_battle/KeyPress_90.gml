//do actions based on answers
if(rdy==1){
    //main battle mode
    if(global.battle_area==0){
    sound_play(snd_confirm); //confirm sound
    choice=global.battle_mode; //set answer

    //first choice code - 
    if(choice==0){global.battle_area=1;global.battle_mode_max=10;}

    //second choice code - escape
    if(choice==1){room_goto(global.current_map);}
    }
    
    //attack mode
    if(global.battle_area==1){
    sound_play(snd_confirm); //confirm sound
    choice=global.battle_mode; //set answer

    //first choice code - p1
    if(choice==0){global.battle_area=1;}

    //second choice code - escape
    if(choice==1){room_goto(global.current_map);}
    }
}

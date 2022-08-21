function scp_battle_player_z_press() {
	//do actions based on answers
	if(rdy==1){//if this turn
	if(instance_number(obj_battle_win_pause)==0){//if battle is not won
	    //main battle mode
	    if(global.battle_area==0){
	    sound_play(snd_confirm); //confirm sound
	    choice=global.battle_mode; //set answer
	    //1 choice code - attack
	    if(choice==0){global.battle_area=1;global.battle_mode=4;global.mode_dire=270;}//choose attack target - start on ene1
	    //2 choice code - ability
	    if(choice==1){//choose ability
	        if(global.ability[battler_number,1]!=""){//if batteler has any abilities
	            global.battle_area=2;global.battle_mode=0;
	        }
	        else{show_message("player does not have any abilities");}
	    }
	    //3 choice code - item
	    if(choice==2){global.battle_area=4;global.battle_mode=0;}//choose item
	    //4 choice code - defend
	    if(choice==3){//choose defend
	    sound_play(snd_chest);global.battle_def[battler_number]*=2;event_user(1);defending=1;}
	    //5 choice code - wait
	    if(choice==4){sound_play(snd_battle_confirm);event_user(1);}//choose wait
	    //6 choice code - escape
	    if(choice==5){//if escape choice is chosen
	    sound_play(snd_escape);//escape sound fx
	    sound_play(snd_battle_win);//win music
	    room_goto(room_battle_results);}//go to battle results room
	    exit//end event
	    }
    
	    //attack target mode
	    if(global.battle_area==1){
	    sound_play(snd_battle_hit); //confirm sound
	    choice=global.battle_mode; //set target
	    global.source=object_index;//set source
	    global.element=element;//set attack element
	    scp_calculate_damage(0,battler_number);//atk
	    visible=0;//show atk
	    nn=instance_create(x,y,obj_battle_attack_gfx);//show atk
	    nn.sprite_index=global.battle_attack[battler_number];//show atk
	    nn.image_speed=0.2;//show atk
	    nn.maker=object_index;
	    event_user(1);//end turn
	    exit//end event
	    }
	    //ability select mode
	    if(global.battle_area==2){//if ability select area
	        if(global.ability[battler_number,global.battle_mode+1]!=""){//if ability in selected slot
	            //if battler has enough mp
	            if(scp_get_ability_mp(global.battle_ability[battler_number,global.battle_mode+1])<=global.battle_mp[battler_number]){
	            global.current_ability=global.battle_mode+1;//set current ability
	            global.battle_area=3;//go to ability target select area
	            global.battle_mode=4;//start target on ene1
	            global.mode_dire=270;//set to go down if first enemy is dead
	            exit//end event
	            }
	            //if battler does not have enough mp
	            else if(scp_get_ability_mp(global.battle_ability[battler_number,global.battle_mode+1])>global.battle_mp[battler_number])
	            {sound_play(snd_cancel);}
	        }
	        if(global.ability[battler_number,global.battle_mode+1]==""){sound_play(snd_cancel);}
	    }
	    //ability target mode
	    if(global.battle_area==3){
	    sound_play(snd_battle_hit); //confirm sound
	    //subtract mp
	    global.battle_mp[battler_number]-=scp_get_ability_mp(global.battle_ability[battler_number,global.current_ability]);
	    choice=global.battle_mode; //set target
	    global.source=object_index;//set source
	    scp_battle_ability_effect(global.battle_ability[battler_number,global.current_ability]);//ability gfx
	    event_user(1);//end turn
	    exit//end event
	    }
	    //item select mode
	    if(global.battle_area==4){//if item select area
	        if(global.item[global.battle_mode+1,1]!=""){//if item in selected slot
	        global.current_item=global.battle_mode+1;//set current item
	        global.battle_area=5;//go to item target select area
	        global.battle_mode=0;//start target on p1
	        global.mode_dire=270;//set to go down if first player is dead
	        exit//end event
	        }
	        if(global.item[global.battle_mode+1]==""){sound_play(snd_cancel);}
	    }
	    //item target mode
	    if(global.battle_area==5){
	    global.item_user=global.battle_mode+1; //set target
	    num=scp_battle_use_item();//item effect
	    if(num==1){event_user(1);}//end turn if item used
	    exit//end event
	    }
	}
	}



}

//initial items
scp_start_items()
scp_start_key_items()
scp_start_equips()

//player stats
scp_set_p1_stats()
scp_set_p2_stats()
scp_set_p3_stats()
scp_set_p4_stats()

//set global battle stats to 0
for(num=1;num<=10;num+=1){//do for all 10 battlers
    global.battle_hp[num]=0;
    global.battle_hpmax[num]=0;
    global.battle_mp[num]=0;
    global.battle_mpmax[num]=0;
    global.battle_atk[num]=0;
    global.battle_def[num]=0;
    global.battle_mag[num]=0;
    global.battle_res[num]=0;
    global.battle_spd[num]=0;
    global.battle_luck[num]=0;
}

//starting stuff
global.current_map=room_map1;
global.rooms_visited=0;
global.money=0;
global.pause=0;
global.move_wait=0;
global.message_visible=0;
global.question_visible=0;
global.menu_visible=0;
global.show_shop=0;
global.menu_visible=0;
global.menu_area=0;
global.shop_area=0;
global.battle_reward_xp=0;
global.battle_reward_money=0;
global.battle_mode=0;
global.current_tile=0;
global.element="";
global.target=obj_p1_battle	//gets reset in battle

//set mode values
global.question_mode=0;
global.question_mode_max=0;
global.shop_mode=0;
global.shop_mode_max=0;
global.mode_dire=90;		//used in battle

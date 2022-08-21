script_execute(scp_talking_depth,0,0,0,0,0);
script_execute(scp_draw_self,0,0,0,0,0);
//talk about general info
if(scp_player_in_range(1)==1){//if in range
    if(one_message==0){//only show talk 1 time
    scp_draw_talk(global.profile[1],message,"","","","","");}
}


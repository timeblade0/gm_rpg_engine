//show message
if(scp_player_in_range(1)==1){
    if(global.menu_visible==0){
    global.messgae_visible=abs(global.message_visible-1); //toggle message
    global.pause=global.messgae_visible; //toggle pause
    talk=global.pause;//toggle talk
    }
}


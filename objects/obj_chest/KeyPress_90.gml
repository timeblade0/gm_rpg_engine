//open chest
if(scp_player_in_range(1)==1){
    if(image_index==0){//if closed - open
    message="Found "+string(item_num)+" "+item_name+".";
    //above shows like this: "Found 1 Potion."
    scp_add_item(item_name,item_num);//add item
    image_index=1;//set as open
    sound_play(snd_chest);
    }
}

//show message
if(scp_player_in_range(1)==1){//if player is close enough
    if(global.menu_visible==0){//if menu not shown
        if(one_message==0){//limit to 1 time
            global.message_visible=abs(global.message_visible-1); //toggle message
            global.pause=global.message_visible; //toggle pause
            talk=global.pause;//toggle talk
            if(talk==0){one_message=1;}
        }
    }
}


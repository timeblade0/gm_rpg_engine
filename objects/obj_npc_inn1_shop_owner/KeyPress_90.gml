//toggle shop
if(global.menu_visible==0){//if menu not up
if(scp_player_in_range(1)==1){//if in 1 range
if(global.show_shop==0){//if shop not shown
global.shop_mode=0;
global.shop_mode_max=3;
global.show_shop=1;
global.shop_area=0;
global.pause=1;
for(num=1;num<=20;num+=1){global.shop_item[num]=item[num]}//set items
exit//end event
}

//do actions based on answers
if(global.show_shop==1){

    //main shop area
    if(global.shop_area==0){
        //0 - buy
        if(global.shop_mode==0){
        global.shop_area=1;//buy area
        global.shop_mode=0;
        sound_play(snd_confirm);
        exit//end event
        }
        //1 - sell
        if(global.shop_mode==1){
        global.shop_area=2;//sell area
        global.shop_mode=0;
        sound_play(snd_confirm);
        exit//end event
        }   
        //3 - exit
        if(global.shop_mode==2){
        global.show_shop=0;
        global.pause=0;
        sound_play(snd_confirm);
        exit//end event
        }
    }
    //shop buy area
    if(global.shop_area==1){
        //buy item
        if(global.shop_item[global.shop_mode+1]!=""){//if item in selected slot
        if(global.money>=scp_get_item_price(global.shop_item[global.shop_mode+1])){//if you have enough money
        scp_add_item(global.shop_item[global.shop_mode+1],1);//get item
        global.money-=scp_get_item_price(global.shop_item[global.shop_mode+1]);//take payment
        sound_play(snd_confirm);//confirm sound
        }
        else{sound_play(snd_cancel);}//not enough money
        }
        else{sound_play(snd_cancel);}//blank slot selected
    }
    //shop sell area
    if(global.shop_area==2){
        //sell item
        if(global.shop_item[global.shop_mode+1]!=""){//if item in selected slot
        global.item[global.shop_mode+1,2]-=1;//remove 1 item
        global.money+=scp_get_item_price(global.item[global.shop_mode+1,1])/2;//take payment
        sound_play(snd_confirm);//confirm sound
        }
        else{sound_play(snd_cancel);}//blank slot selected
    }
}

}
}


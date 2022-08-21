//cancel shop
if(global.show_shop==1){//if shop is up
    if(global.shop_area==0){//if shop area is main
    global.show_shop=0;//close shop
    global.pause=0;//unpause
    }
    if(global.shop_area==1||global.shop_area==2){//if shop area is buy/sell
    global.shop_area=0;//shop main
    global.shop_mode=0;
    }
}

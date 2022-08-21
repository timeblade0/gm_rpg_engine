//shop mode left
if(scp_player_in_range(1)==1){//player 1 square away
if(global.show_shop==1){//if shop is up
if(global.shop_area==1||global.shop_area==2){//if buy/sell area
global.shop_mode-=10;//move left 1 column
}
}
}

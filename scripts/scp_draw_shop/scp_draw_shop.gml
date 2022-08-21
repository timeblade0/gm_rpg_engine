function scp_draw_shop() {
	//draw menu
	//put in draw event of shop keeper

	//shop area referance
	//global.shop_area=0 - main shop area
	//global.shop_area=1 - buy area
	//global.shop_area=2 - sell area

	if(global.show_shop==1){
	    if(global.shop_mode>global.shop_mode_max-1){global.shop_mode=0;}//loop bottem to top
	    if(global.shop_mode<0){global.shop_mode=global.shop_mode_max-1;}//loop top to bottem
    
	    //draw bkg
	    draw_set_color(c_navy);
	    draw_rectangle(view_left(),view_top(),view_left()+view_width(),view_top()+view_height(),0);
    
	    //draw selections
	    draw_set_color(c_white);
	    draw_line(view_left()+150,view_top(),view_left()+150,view_top()+view_height());//selections divider
	    draw_text(view_left()+50,view_top()+30,string_hash_to_newline("Buy"));//mode0
	    draw_text(view_left()+50,view_top()+60,string_hash_to_newline("Sell"));//mode1
	    draw_text(view_left()+50,view_top()+90,string_hash_to_newline("Exit"));//mode2

	    //draw player's money
	    draw_set_color(c_white);
	    draw_text(view_left()+5,view_top()+460,string_hash_to_newline("Gold: "+string(global.money)));

	    scp_draw_shop_selections();//draw selections
	    scp_draw_shop_buy_item();//draw buy menu
	    scp_draw_shop_sell_item();//draw sell menu
	}



}

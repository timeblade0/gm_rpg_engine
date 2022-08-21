function scp_draw_shop_buy_item() {
	//draw shop buy item
	//put in draw event of shop keeper
	if(global.show_shop==1){//if shop up
	    if(global.shop_area==1){//if buy area
        
	        //dividing lines
	        draw_set_color(c_white);
	        draw_line(view_left()+390,view_top(),view_left()+390,view_top()+view_height());//vertical line
        
	        //draw catagory names
	        draw_set_color(c_white);
	        draw_text(250,30,string_hash_to_newline("Buy:"));
        
	        //draw items
	        draw_set_color(c_white);
	        item_num=1;
	        y_value=70;
	        while(item_num<=10){
	            draw_text(200,y_value,string_hash_to_newline(global.shop_item[item_num]));//item name
	            draw_text(320,y_value,string_hash_to_newline("$"+string(scp_get_item_price(global.shop_item[item_num]))));//item price
	            y_value+=20;
	            item_num+=1;
	        }
        
	        y_value=70;
	        while(item_num<=20){
	            draw_text(450,y_value,string_hash_to_newline(global.shop_item[item_num]));//item name
	            draw_text(570,y_value,string_hash_to_newline("$"+string(scp_get_item_price(global.shop_item[item_num]))));//item price
	            y_value+=20;
	            item_num+=1;
	        }
        
	        //draw item info
	        draw_set_color(c_white);
	        draw_text(view_left()+200,view_top()+300,string_hash_to_newline(scp_get_item_info(global.shop_item[global.menu_mode+1])));
	    }
	}



}

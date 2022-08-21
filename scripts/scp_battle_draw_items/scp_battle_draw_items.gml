function scp_battle_draw_items() {
	//draw item selection
	//draws items when in item select area
	if(global.battle_area==4&&rdy==1){//if this turn and ability selection area
	draw_line(view_left()+245,view_top()+view_height()-150,view_left()+245,view_top()+view_height());//col1+2 divider
	draw_line(view_left()+370,view_top()+view_height()-150,view_left()+370,view_top()+view_height());//col2+3 divider
	draw_line(view_left()+495,view_top()+view_height()-150,view_left()+495,view_top()+view_height());//col3+4 divider
	//draw items
	for(num=1;num<=20;num+=1){fcolor[num]=c_white;}//set default font colors
	fcolor[global.battle_mode+1]=c_yellow;//show selected as yellow
	y_value=130;
	num=1;
	while(num<=20){//draw all 20 items
	    //item col1
	    font_color=fcolor[num];
	    draw_text(view_left()+130,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,1]));//draw item name
	    draw_text(view_left()+230,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,2]));//draw item number
	    num+=1;
	    //item col2
	    font_color=fcolor[num];
	    draw_text(view_left()+250,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,1]));//draw item name
	    draw_text(view_left()+350,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,2]));//draw item number
	    num+=1;
	    //item col3
	    font_color=fcolor[num];
	    draw_text(view_left()+375,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,1]));//draw item name
	    draw_text(view_left()+475,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,2]));//draw item number
	    num+=1;
	    //item col4
	    font_color=fcolor[num];
	    draw_text(view_left()+500,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,1]));//draw item name
	    draw_text(view_left()+600,view_top()+view_height()-y_value,string_hash_to_newline(global.item[num,2]));//draw item number
	    num+=1;
	    y_value-=20
	    }
	}



}

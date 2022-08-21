function scp_draw_menu_items() {
	//draw menu items
	//put in draw event of menu control

	//font settings
	font_color=c_white;
	font_size=10;
	font_style="Arial";

	//dividing lines
	draw_line(view_left()+390,view_top(),view_left()+390,view_top()+view_height());//vertical line

	//draw catagory names
	draw_text(250,30,string_hash_to_newline("Items:"));

	//draw items
	y_value=70;
	item_num=1;
	while(item_num<=10){
	draw_text(200,y_value,string_hash_to_newline(global.item[item_num,1]));//item name
	draw_text(300,y_value,string_hash_to_newline(global.item[item_num,2]));//item amount
	y_value+=20;
	item_num+=1;
	}
	y_value=70;
	while(item_num<=20){
	draw_text(450,y_value,string_hash_to_newline(global.item[item_num,1]));//item name
	draw_text(550,y_value,string_hash_to_newline(global.item[item_num,2]));//item amount
	y_value+=20;
	item_num+=1;
	}

	//draw item info
	draw_text(view_left()+200,view_top()+300,string_hash_to_newline(scp_get_item_info(global.item[global.menu_mode+1,1])));



}

function scp_add_item(argument0, argument1) {
	//add item
	//run when you get the item
	//argument0=item name - need ""
	//argument1=amount - no ""

	if(argument1==0){argument1=1;}//set default to 1 - can't add 0 items

	item_exsists=0;
	//check if item exsists
	for(kk=1;kk<=20;kk+=1){//run 20 times - 1 for each item slot
	if(global.item[kk,1]==argument0){item_exsists=1;item_num=kk;}
	}

	//if you already have item, add 1
	if(item_exsists==1){//if you ahve the item
	global.item[item_num,2]+=1;//add 1 item
	}

	done=0;
	//if you dont have item, make new one
	if(item_exsists==0){//if you ahve the item
	    for(kk=1;kk<=20&&done==0;kk+=1){//run 20 times - 1 for each item slot
	        if(global.item[kk,2]==0){//find next open slot and fill it
	        global.item[kk,1]=argument0;//set item name
	        global.item[kk,2]=argument1;//set item amount
	        done=1;
	        }
	    }
	}



}

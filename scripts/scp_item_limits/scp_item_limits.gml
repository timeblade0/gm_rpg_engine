function scp_item_limits() {
	//item/key item limits
	//run in step event of control

	///////////////////////////////////////////////////////////////////////
	//items
	//remove item if 0
	for(kk=1;kk<=20;kk+=1){//run 20 times - 1 for each item
	    if(global.item[kk,2]<=0){//if none of item
	    global.item[kk,1]="";//set name to blank
	    global.item[kk,2]=0;//set amount to 0
	    }
	}

	//move items up if open slots
	for(kk=2;kk<=20;kk+=1){//run 19 times - 1 for each item - skip #1
	    if(global.item[kk-1,2]=0){//if slot before current is open
	    global.item[kk-1,1]=global.item[kk,1];//move name
	    global.item[kk-1,2]=global.item[kk,2];//move amount
	    global.item[kk,1]="";//clear name
	    global.item[kk,2]=0;//clear number
	    }
	}
	///////////////////////////////////////////////////////////////////////
	//key items
	//remove item if 0
	for(kk=1;kk<=20;kk+=1){//run 20 times - 1 for each item
	    if(global.key_item[kk,2]==0){//if none of item
	    global.key_item[kk,1]="";//set name to blank
	    }
	}

	//move items up if open slots
	for(kk=2;kk<=20;kk+=1){//run 19 times - 1 for each item - skip #1
	    if(global.key_item[kk-1,2]=0){//if slot before current is open
	    global.key_item[kk-1,1]=global.key_item[kk,1];//move name
	    global.key_item[kk-1,2]=global.key_item[kk,2];//move amount
	    global.key_item[kk,1]="";//clear name
	    global.key_item[kk,2]=0;//clear number
	    }
	}



}

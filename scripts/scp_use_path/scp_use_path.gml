function scp_use_path() {
	//use path
	//run in alarm[0] event of NPC's that have a path
	//NOTE: You DO NOT need to change this script. 
	//To change a path, look in the create event of the object with a path
	done=0;
	if(global.pause==0){//if not paused
	    if(distance_to_object(obj_player)>16){//player not close
	        image_speed=0.3;
	        if(path[path_current]="r"&&done==0){//move right
	        hspeed=unit_speed;
	        vspeed=0;
	        path_current+=1;
	        sprite_index=face_right;
	        done=1;
	        }
	        if(path[path_current]="d"&&done==0){//move down
	        hspeed=0;
	        vspeed=unit_speed;
	        path_current+=1;
	        sprite_index=face_down;
	        done=1;
	        }
	        if(path[path_current]="l"&&done==0){//move left
	        hspeed=-unit_speed;
	        vspeed=0;
	        path_current+=1;
	        sprite_index=face_left;
	        done=1;
	        }
	        if(path[path_current]="u"&&done==0){//move up
	        hspeed=0;
	        vspeed=-unit_speed;
	        path_current+=1;
	        sprite_index=face_up;
	        done=1;
	        }
	    }
	    if(distance_to_object(obj_player)<=16){hspeed=0;vspeed=0;image_speed=0;move_snap(32,32);}
	    //loop path
	    if(path_current>path_amount-1){path_current=0;}
	}
	else{hspeed=0;vspeed=0;move_snap(32,32);}
	alarm[0]=8;//continue moving
}

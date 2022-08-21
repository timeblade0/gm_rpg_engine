#region Change sprite to direction of walking

if(global.pause==0){
	//by key pressed
	if(keyboard_check(vk_up)){sprite_index=global.face_up[1]}
	if(keyboard_check(vk_down)){sprite_index=global.face_down[1]}
	if(keyboard_check(vk_left)){sprite_index=global.face_left[1]}
	if(keyboard_check(vk_right)){sprite_index=global.face_right[1]}

	//by hspeed and vspeed
	if(vspeed<0){sprite_index=global.face_up[1]}
	if(vspeed>0){sprite_index=global.face_down[1]}
	if(hspeed<0){sprite_index=global.face_left[1]}
	if(hspeed>0){sprite_index=global.face_right[1]}
	image_alpha = 1;	//not transparent
}

#endregion

//don't walk in place when paused
if(global.pause==1){image_speed=0;}

#region Waling

//walk left
if keyboard_check(vk_left){
    if(global.pause==0&&global.menu_visible==0){
        if(wait==0&&global.move_wait=0){
        image_speed=0.3;
        dire=180;
            if(position_meeting(x-sprite_width,y,obj_wall)==0){
            hspeed=-unit_speed;
            wait=1;
            alarm[0]=8;
            scp_random_battle();
            }
        }
    }
}

//walk right
if keyboard_check(vk_right){
    if(global.pause==0&&global.menu_visible==0){
        if(wait==0&&global.move_wait=0){
        image_speed=0.3;
        dire=0;
            if(position_meeting(x+sprite_width,y,obj_wall)==0){
            hspeed=unit_speed;
            wait=1;
            alarm[0]=8;
            scp_random_battle();
            }
        }
    }
}

//walk up
if keyboard_check(vk_up){
    if(global.pause==0&&global.menu_visible==0){
        if(wait==0&&global.move_wait=0){
        image_speed=0.3;
        dire=90;
            if(position_meeting(x,y-sprite_width,obj_wall)==0){
            vspeed=-unit_speed;
            wait=1;
            alarm[0]=8;
            scp_random_battle();
            }
        }
    }
}

//walk down
if keyboard_check(vk_down){
    if(global.pause==0&&global.menu_visible==0){
        if(wait==0&&global.move_wait=0){
        image_speed=0.3;
        dire=270;
            if(position_meeting(x,y+sprite_width,obj_wall)==0){
            vspeed=unit_speed;
            wait=1;
            alarm[0]=8;
            scp_random_battle();
            }
        }
    }
}

#endregion
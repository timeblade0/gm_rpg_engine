global.move_wait = 1;
alarm[1] = 5;

//set sprites from global
if(global.rooms_visited>1){
	face_up=global.face_up[1];
	face_right=global.face_right[1];
	face_left=global.face_left[1];
	face_down=global.face_down[1];
	profile=global.profile[1];
	sprite_index=face_down;
}

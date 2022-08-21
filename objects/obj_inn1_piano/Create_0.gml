action_set_relative(0);
unit_speed = 4;
wait = 0;
choice = 0;
talk = 0;
//set sprites
image_speed=0;
image_index=1;
face_up=spr_female1_u;
face_right=spr_female1_r;
face_left=spr_female1_l;
face_down=spr_female1_d;
profile=spr_face_female1;
{
action_set_relative(1);
action_create_object(obj_wall, 0, 0);
action_set_relative(0);
}
action_set_relative(0);

action_set_relative(0);
unit_speed = 4;
wait = 0;
choice = 0;
talk = 0;
//set sprites to male
image_speed=0;
image_index=1;
face_up=spr_shop_keeperm_u;
face_right=spr_shop_keeperm_r;
face_left=spr_shop_keeperm_l;
face_down=spr_shop_keeperm_d;
profile=spr_face_shop_owner_m1;
{
action_set_relative(1);
action_create_object(obj_wall, 0, 0);
action_set_relative(0);
}
action_set_relative(0);

if(global.menu_visible==0){
//show question
if(scp_player_in_range(1)==1){//if in range
global.question_mode_max=3;

//do actions based on answers
if(global.question_visible==1){
sound_play(snd_confirm); //confirm sound
choice=global.question_mode; //set answer

//first choice code
if(choice==0){//set sprites to male
global.gender[1]="Male";
global.face_up[1]=spr_hero_m_u;
global.face_right[1]=spr_hero_m_r;
global.face_left[1]=spr_hero_m_l;
global.face_down[1]=spr_hero_m_d;
global.profile[1]=spr_face_hero1_m;
global.battle_stance[1]=spr_battle_hero1_m_stand;
global.battle_attack[1]=spr_battle_hero1_m_attack;
global.battle_die[1]=spr_battle_hero1_m_die;
obj_player.sprite_index=spr_hero_m_d;}

//second choice code
if(choice==1){//set sprites to female1
global.gender[1]="Female";
global.face_up[1]=spr_hero_f_u;
global.face_right[1]=spr_hero_f_r;
global.face_left[1]=spr_hero_f_l;
global.face_down[1]=spr_hero_f_d;
global.profile[1]=spr_face_hero1_f;
global.battle_stance[1]=spr_battle_hero1_f_stand;
global.battle_attack[1]=spr_battle_hero1_f_attack;
global.battle_die[1]=spr_battle_hero1_f_die;
obj_player.sprite_index=spr_hero_f_d;}

//third choice code
if(choice==2){//set sprites to female2
global.gender[1]="Female";
global.face_up[1]=spr_female1_u;
global.face_right[1]=spr_female1_r;
global.face_left[1]=spr_female1_l;
global.face_down[1]=spr_female1_d;
global.profile[1]=spr_face_female1;
global.battle_stance[1]=spr_battle_female1_stand;
global.battle_attack[1]=spr_battle_female1_attack;
global.battle_die[1]=spr_battle_female1_die;
obj_player.sprite_index=spr_female1_d;}
}

global.question_visible=abs(global.question_visible-1); //toggle question
global.pause=global.question_visible; //toggle pause
talk=global.pause;//toggle talk
}
}


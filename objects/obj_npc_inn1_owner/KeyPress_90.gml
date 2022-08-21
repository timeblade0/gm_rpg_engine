if(global.menu_visible==0){
//show question
if(scp_player_in_range(2)==1){//if in range
global.question_mode_max=2;

//do actions based on answers
if(global.question_visible==1){
sound_play(snd_confirm); //confirm sound
choice=global.question_mode; //set answer

//first choice code
if(choice==0){//stay at inn
sound_play(snd_inn_stay);//play inn music
scp_full_heal();//heal players
instance_create(0,0,obj_inn_stay_control);//black sleep screen
//black screen code here
}

//second choice code
if(choice==1){//dont stay at inn
//nothing here for this
}
}

global.question_visible=abs(global.question_visible-1); //toggle question
global.pause=global.question_visible; //toggle pause
talk=global.pause;//toggle talk
}
}


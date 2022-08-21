//only talk if menu is closed
if(global.menu_visible==0){
	
	//show question
	if(scp_player_in_range(1)==1){
		global.question_mode_max=4;

		//choose music to play
		if(global.question_visible==1){
			audio_play_sound(snd_confirm,1,0)
			choice=global.question_mode; //set answer

			//play music from selection
			if(choice==0){ audio_play_sound(snd_map,1,1); }
			if(choice==1){ audio_play_sound(snd_smith,1,1); }
			if(choice==2){ audio_play_sound(snd_battle,1,1); }
			if(choice==3){ audio_play_sound(snd_battle_win,1,1); }
		}

		global.question_visible=abs(global.question_visible-1); //toggle question
		global.pause=global.question_visible; //toggle pause
		talk=global.pause;//toggle talk
	}
}


function scp_save_game() {
	//save with file prompt
	//call when used
	//NOTE: You DO NOT need to change this
	save_name=get_save_filename("Save File |*.sav",""); //choose file
	if(save_name!=""){ //only if cancel not pressed
	    if(file_exists(save_name)==0){ //save new
	    game_save("" + save_name + ".sav");}
	    if(file_exists(save_name)==1){ //resave
	    game_save("" + save_name);}
	}
}

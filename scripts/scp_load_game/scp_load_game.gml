function scp_load_game() {
	//load with file prompt
	//call when used
	//NOTE: You DO NOT need to change this
	load_name=get_open_filename("Save File |*.sav",""); //choose file
	game_load("" + load_name); //load
}

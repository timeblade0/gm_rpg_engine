function scp_battle_ai_rand_mag_par() {
	//AI - 30% chance for rand par, otherwise rand mag atk
	num=random(floor(100));
	if(num<=30){scp_battle_ai_par_rand_player();}//par rand player
	if(num>30){scp_battle_ai_atk_rand_player(1);}//mag rand player



}

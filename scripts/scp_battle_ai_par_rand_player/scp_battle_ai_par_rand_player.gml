function scp_battle_ai_par_rand_player() {
	//AI - choose a random player to attack
	done=0;
	while(done=0){ //repeat until a valid target
	choice=floor(random(4)); //4 players to choose from
	if(choice==0&&instance_number(obj_p1_battle)==1){//p1 - target
	    if(global.battle_hp[1]>0){
	        if(global.battle_stat_effect[1]!="Par"){
	        done=1;global.target=obj_p1_battle;
	        }}}
	if(choice==1&&instance_number(obj_p2_battle)==1){//p2 - target
	    if(global.battle_hp[2]>0){
	        if(global.battle_stat_effect[2]!="Par"){
	        done=1;global.target=obj_p2_battle;
	        }}}
	if(choice==2&&instance_number(obj_p3_battle)==1){//p3 - target
	    if(global.battle_hp[3]>0){
	        if(global.battle_stat_effect[3]!="Par"){
	        done=1;global.target=obj_p3_battle;
	        }}}
	if(choice==3&&instance_number(obj_p4_battle)==1){//p4 - target
	    if(global.battle_hp[4]>0){
	        if(global.battle_stat_effect[4]!="Par"){
	        done=1;global.target=obj_p4_battle;
	        }}}
	}
	sound_play(snd_bolt1);//attack sound
	global.source=object_index;//set attacker
	global.battle_stat_effect[global.target.battler_number]="Par";//paralize target
	scp_enemy_attacks();
	alarm[0]=30;//end battler turn - with pause



}

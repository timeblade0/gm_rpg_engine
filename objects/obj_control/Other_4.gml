global.rooms_visited += 1;
global.battle_able = 0;
alarm[1] = 100;

//create and configure enemies for random battle
if(room==room_random_battle){
	scp_random_battle_room()	
}
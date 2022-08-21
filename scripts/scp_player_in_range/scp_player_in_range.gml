//check if player is in range of current object
//argument0=1||argument0=0 is 1 square range
//argument0=2 is 2 square range
//NOTE: You DO NOT need to change this 

function scp_player_in_range(argument0) {

	num=0;//set return default to 0
	if(argument0==1||argument0==0){distance=32;}//1 square range
	if(argument0==2){distance=64;}//2 square range

	if(obj_player.dire==270&&obj_player.x==x&&obj_player.y==y-distance){num=1;}	//player below object
	if(obj_player.dire==90&&obj_player.x==x&&obj_player.y==y+distance){num=1;}	//player above object
	if(obj_player.dire==0&&obj_player.x==x-distance&&obj_player.y==y){num=1;}	//player left of object
	if(obj_player.dire==180&&obj_player.x==x+distance&&obj_player.y==y){num=1;}	//player right of object

	return(num)//return if in range
}

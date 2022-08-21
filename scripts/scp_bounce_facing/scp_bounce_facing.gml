function scp_bounce_facing() {
	//bounce by facing
	//NOTE: You DO NOT need to change this
	if(vspeed<0){y+=10;move_snap(32,32);alarm[0]=0;speed=0;wait=0;}//go up, bounce down
	if(vspeed>0){y-=10;move_snap(32,32);alarm[0]=0;speed=0;wait=0;}//go down, bounce up
	if(hspeed<0){x+=10;move_snap(32,32);alarm[0]=0;speed=0;wait=0;}//go left, bounce right
	if(hspeed>0){x-=10;move_snap(32,32);alarm[0]=0;speed=0;wait=0;}//go right, bounce left
}

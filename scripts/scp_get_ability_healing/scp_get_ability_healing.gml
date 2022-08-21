function scp_get_ability_healing(argument0) {
	//get ability healing
	//returns 1 if ability is a menu usable ability
	//used for healing in menu and starting target on players in battle
	//argument0=ability name - need ""
	if(argument0=="Fire"){return(0);}
	if(argument0=="Water"){return(0);}
	if(argument0=="Ice"){return(0);}
	if(argument0=="Thunder"){return(0);}
	if(argument0=="Shockwave"){return(0);}
	if(argument0=="Cure"){return(1);}



}

function scp_get_ability_info(argument0) {
	//get ability info
	//returns the info of ability in argument0
	//used to show info in menu
	//argument0=ability name - need ""
	if(argument0=="Fire"){return("Deals 10 Fire damage");}
	if(argument0=="Water"){return("Deals 10 Water damage");}
	if(argument0=="Ice"){return("Deals 15 Ice damage");}
	if(argument0=="Thunder"){return("Deals 20 Thunder damage");}
	if(argument0=="Shockwave"){return("Paralyzes target");}
	if(argument0=="Cure"){return("Heal target by 30HP");}



}

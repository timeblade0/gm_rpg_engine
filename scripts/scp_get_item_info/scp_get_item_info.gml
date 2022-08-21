function scp_get_item_info(argument0) {
	//get item info
	//returns the info on the item entered
	//argument0=item name - need ""

	//items
	if(argument0=="Potion"){return("Heals by 50HP");}
	if(argument0=="Mega Potion"){return("Heals by 100HP");}
	if(argument0=="Ether"){return("Restores 50MP");}
	if(argument0=="Phoenix Down"){return("Revives a dead player");}

	//key items
	if(argument0=="Mystic Pendant"){return("A pendant with mystic powers");}
	if(argument0=="Map"){return("A map of the world");}

	//eqip items
	if(argument0=="Iron Sword"){return("+3ATK for Squire/Knight");}
	if(argument0=="Iron Shield"){return("+3DEF for Squire/Knight");}
	if(argument0=="Wood Staff"){return("+3MAG for Mage/Wizzard");}
	if(argument0=="Light Shield"){return("+2DEF for Mage/Wizzard");}



}

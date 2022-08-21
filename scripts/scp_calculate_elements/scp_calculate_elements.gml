function scp_calculate_elements(argument0, argument1) {
	//calculate elements - weak,res,imm,abs
	//NOTE: You DO NOT have to change this script
	//order = absorb,immune,weakness,resistance
	//argument0=element
	//argument1=damage
	//return=new damage
	//example: damage=scp_calculate_elements(global.element,damage);

	with(global.target){
	element_damage=argument1;

	//absorb - turn damage into healing
	if(absorb!=""&&argument0!=""){
	if(argument0==absorb||argument0==absorb2){element_damage=-argument1;}}

	//immune - take no damage
	if(immune!=""&&argument0!=""){
	if(argument0==immune||argument0==immune2){element_damage=0;}}

	//weak - take 2x damage
	if(weakness!=""&&argument0!=""){
	if(argument0==weakness||argument0==weakness2){element_damage=argument1*2;}}

	//resist - take 1/2 damage
	if(resistance!=""&&argument0!=""){
	if(argument0==resistance||argument0==resistance2){element_damage=argument1/2;}}

	return(element_damage);
	}



}

function scp_battle_ability_effect(argument0) {
	//do ability effect
	//shows the gfx effect of the ability
	//argument0=ability name - need ""
	//nn = temp variable

	//fire spell
	if(argument0=="Fire"){
	nn=instance_create(global.target.x,global.target.y,obj_ability_effect);//make effect
	nn.sprite_index=spr_spell_fire1;//set effect gfx
	nn.image_speed=0.3;//set effect image speed
	global.element=scp_get_ability_element(argument0);
	scp_calculate_damage(1,battler_number);//use magic ability
	}

	//water spell
	if(argument0=="Water"){
	nn=instance_create(global.target.x,global.target.y,obj_ability_effect);//make effect
	nn.sprite_index=spr_spell_water1;//set effect gfx
	nn.image_speed=0.3;//set effect image speed
	global.element=scp_get_ability_element(argument0);
	scp_calculate_damage(1,battler_number);//use magic ability
	}

	//ice spell
	if(argument0=="Ice"){
	nn=instance_create(global.target.x,global.target.y,obj_ability_effect);//make effect
	nn.sprite_index=spr_spell_ice1;//set effect gfx
	nn.image_speed=0.2;//set effect image speed
	global.element=scp_get_ability_element(argument0);
	scp_calculate_damage(1,battler_number);//use magic ability
	}

	//thunder spell
	if(argument0=="Thunder"){
	nn=instance_create(global.target.x,global.target.y,obj_ability_effect);//make effect
	nn.sprite_index=spr_spell_thunder1;//set effect gfx
	nn.image_speed=0.5;//set effect image speed
	global.element=scp_get_ability_element(argument0);
	scp_calculate_damage(1,battler_number);//use magic ability
	}

	//shockwave spell
	if(argument0=="Shockwave"){
	nn=instance_create(global.target.x,global.target.y,obj_ability_effect);//make effect
	nn.sprite_index=spr_spell_bolt1;//set effect gfx
	nn.image_speed=0.5;//set effect image speed
	global.element=scp_get_ability_element(argument0);
	global.battle_stat_effect[global.target.battler_number]="Par"
	}

	//cure spell
	if(argument0=="Cure"){
	nn=instance_create(global.target.x,global.target.y,obj_ability_effect);//make effect
	nn.sprite_index=spr_spell_cure1;//set effect gfx
	nn.image_speed=0.2;//set effect image speed
	global.element=scp_get_ability_element(argument0);
	scp_calculate_damage(5,battler_number);//cure effect
	}



}

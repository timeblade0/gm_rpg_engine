function scp_calculate_damage(argument0, argument1) {
	//deal damage to target
	//argument0=damage type
	//argument1=battler number

	//damage type guide
	//0=attack damage
	//1=magic ability damage
	//2=penitrate def atk damage
	//3=penitrate res mag damage
	//4=magic atk damage
	//5=cure spell effect
	//6=non magic ability

	//attack damage - also used for non magic abilities
	if(argument0==0){
	    with(global.target){
	    damage=global.battle_atk[global.source.battler_number];//set damage to source atk
	    damage-=global.battle_def[global.target.battler_number];//reduce by target def
	    if(damage<=0){damage=0;}//limit damage to 0
	    damage=scp_calculate_elements(global.element,damage);//weak,res,imm,abs
	    global.battle_hp[global.target.battler_number]-=damage;//inflict damage
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}
	//magic ability damage
	if(argument0==1){
	    with(global.target){
	    damage=scp_get_ability_power(global.ability[argument1,global.current_ability]);//get base power
	    damage+=global.battle_mag[global.source.battler_number];//add mag power
	    damage-=global.battle_res[global.target.battler_number];//reduce by target res
	    if(damage<=0){damage=0;}//limit damage to 0
	    damage=scp_calculate_elements(global.element,damage);//weak,res,imm,abs
	    global.battle_hp[global.target.battler_number]-=damage;//inflict damage
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}
	//defence penitrate atttack - also non magic abilitites
	if(argument0==2){
	    with(global.target){
	    damage=global.battle_atk[global.source.battler_number];//set damage to source atk
	    if(damage<=0){damage=0;}//limit damage to 0
	    global.battle_hp[global.target.battler_number]-=damage;//inflict damage
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}
	//defence penitrate magic
	if(argument0==3){
	    with(global.target){
	    damage=scp_get_ability_power(global.ability[argument1,global.current_ability]);//get base power
	    damage+=global.battle_mag[global.source.battler_number];//add mag power
	    if(damage<=0){damage=0;}//limit damage to 0
	    global.battle_hp[global.target.battler_number]-=damage;//inflict damage
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}
	//magic attack damage
	if(argument0==4){
	    with(global.target){
	    damage=global.battle_mag[global.source.battler_number];//set damage to source mag
	    damage-=global.battle_res[global.target.battler_number];//reduce by target defence
	    if(damage<=0){damage=0;}//limit damage to 0
	    damage=scp_calculate_elements(global.element,damage);//weak,res,imm,abs
	    global.battle_hp[global.target.battler_number]-=damage;//inflict damage
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}
	//cure spell effect
	if(argument0==5){
	    with(global.target){
	    damage=scp_get_ability_power(global.ability[argument1,global.current_ability]);//get base power
	    global.battle_hp[global.target.battler_number]+=damage;//inflict healing
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}
	//non magic ability damage
	if(argument0==6){
	    with(global.target){
	    damage=scp_get_ability_power(global.ability[argument1,global.current_ability]);//get base power
	    damage+=global.battle_atk[global.source.battler_number];//add atk power
	    damage-=global.battle_def[global.target.battler_number];//reduce by target def
	    if(damage<=0){damage=0;}//limit damage to 0
	    damage=scp_calculate_elements(global.element,damage);//weak,res,imm,abs
	    global.battle_hp[global.target.battler_number]-=damage;//inflict damage
	    nn=instance_create(x,y,obj_floating_damage);//show damage
	    nn.damage=damage;//show damage
	    }
	}



}

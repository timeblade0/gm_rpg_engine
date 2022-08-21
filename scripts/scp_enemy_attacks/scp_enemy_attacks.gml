function scp_enemy_attacks() {
	//enemy attacks
	if(atk_effect=="gust")  //griffen gust
	{                     
	    atk_element="air";
	    nn=instance_create(x,y,obj_battle_ranged_effect);
	    nn.sprite_index=spr_spell_gust;
	}
	if(atk_effect=="shoot_arrow") //centaur arrow
	{ 
	    atk_element="normal";
	    nn=instance_create(x,y,obj_battle_ranged_effect);
	    nn.sprite_index=spr_spell_arrow;
	}
	if(atk_effect=="thunder") //thunder
	{ 
	    atk_element="thunder";
	    nn=instance_create(x,y,obj_battle_ranged_effect);
	    nn.sprite_index=spr_spell_bolt1
	}
}

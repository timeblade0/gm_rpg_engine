script_execute(scp_draw_self,0,0,0,0,0);
//draw battle modes - attack, escape, ect
font_color=c_white;
if(rdy==1){
draw_text(view_left+30,view_top+view_height-130,string_hash_to_newline("Attack"));
draw_text(view_left+30,view_top+view_height-110,string_hash_to_newline("Escape"));
}
//draw selector
font_color=c_white//white font
if(rdy==1){
    if(global.battle_area==0){//main battle mode
        if(global.battle_mode==0){draw_text(view_left+20,view_top+view_height-130,string_hash_to_newline(">"));}
        if(global.battle_mode==1){draw_text(view_left+20,view_top+view_height-110,string_hash_to_newline(">"));}
    }
    if(global.battle_area==1){//attack mode
        if(global.battle_mode==0){with(obj_p1_battle){draw_text(x-sprite_width/2,y,string_hash_to_newline(">"));}}
        //if(global.battle_mode==1){with(obj_p2_battle){draw_text(x-sprite_width/2,y,">");}}
        //if(global.battle_mode==2){with(obj_p3_battle){draw_text(x-sprite_width/2,y,">");}}
        //if(global.battle_mode==3){with(obj_p4_battle){draw_text(x-sprite_width/2,y,">");}}
        
        if(global.battle_mode==4){with(obj_ene1_battle){draw_text(x+sprite_width/2,y,string_hash_to_newline("<"));}}
        //if(global.battle_mode==5){with(obj_ene2_battle){draw_text(x-sprite_width/2,y,">");}}
        //if(global.battle_mode==6){with(obj_ene3_battle){draw_text(x-sprite_width/2,y,">");}}
        //if(global.battle_mode==7){with(obj_ene4_battle){draw_text(x-sprite_width/2,y,">");}}
        //if(global.battle_mode==8){with(obj_ene5_battle){draw_text(x-sprite_width/2,y,">");}}
        //if(global.battle_mode==9){with(obj_ene6_battle){draw_text(x-sprite_width/2,y,">");}}
    }
}


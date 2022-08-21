//toggle menu
if(global.question_visible==0&&global.message_visible==0){
    if(instance_number(obj_battle_control)==0){//not in battle
    if(instance_number(obj_battle_results_control)==0){//not in battle results
    global.menu_visible=abs(global.menu_visible-1);
    global.pause=global.menu_visible;
    }
}
}


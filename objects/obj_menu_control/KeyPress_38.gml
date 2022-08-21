//move selector up
if(global.menu_visible==1){//if menu is shown
    if(global.menu_area==2||global.menu_area==3||global.menu_area==5){//if item/ability user select
        global.menu_mode-=2;//move up 1 row
    }
    else{global.menu_mode-=1;}//if not item/ability user select - move up 1 mode
}

